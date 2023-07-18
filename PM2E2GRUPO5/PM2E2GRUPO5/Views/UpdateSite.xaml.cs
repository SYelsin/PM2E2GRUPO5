﻿using Acr.UserDialogs;
using Plugin.AudioRecorder;
using Plugin.Media;
using Plugin.Media.Abstractions;
using PM2E2GRUPO5.Controller;
using PM2E2GRUPO5.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace PM2E2GRUPO5.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class UpdateSite : ContentPage
    {
        byte[] Image;
        private AudioRecorderService audioRecorderService = new AudioRecorderService()
        {
            StopRecordingOnSilence = false,
            StopRecordingAfterTimeout = false
        };

        private AudioPlayer audioPlayer = new AudioPlayer();
        MediaFile FileFoto = null;
        Sitio sitio;

        private bool reproducir = false;

        public UpdateSite(Sitio sitio)
        {
            InitializeComponent();
            this.sitio = sitio;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            LoadData();
        }

        void LoadData()
        {
            imgFoto.Source = GetImageResourseFromBytes(sitio.FirmaDigital);
            txtLatitude.Text = sitio.Latitud.ToString();
            txtLongitude.Text = sitio.Longitud.ToString();
            txtDescription.Text = sitio.Descripcion;
        }
        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            bool response = await Application.Current.MainPage.DisplayAlert("Advertencia", "Seleccione el tipo de imagen que desea", "Camara", "Galeria");

            if (response)
                GetImageFromCamera();
            else
                GetImageFromGallery();
        }

        private async void GetImageFromGallery()
        {
            try
            {
                if (CrossMedia.Current.IsPickPhotoSupported)
                {
                    var FileFoto = await CrossMedia.Current.PickPhotoAsync(new PickMediaOptions
                    {
                        PhotoSize = PhotoSize.Medium,
                    });
                    if (FileFoto == null)
                        return;

                    imgFoto.Source = ImageSource.FromStream(() => { return FileFoto.GetStream(); });
                    Image = File.ReadAllBytes(FileFoto.Path);
                }
                else
                {
                    Message("Advertencia", "Se produjo un error al seleccionar la imagen");
                }
            }
            catch (Exception)
            {
                Message("Advertencia", "Se produjo un error al seleccionar la imagen");
            }

        }
        private async void GetImageFromCamera()
        {
            var status = await Permissions.CheckStatusAsync<Permissions.Photos>();
            if (status == PermissionStatus.Granted)
            {
                try
                {
                    FileFoto = await CrossMedia.Current.TakePhotoAsync(new StoreCameraMediaOptions
                    {
                        PhotoSize = PhotoSize.Medium,
                        SaveToAlbum = true
                    });

                    if (FileFoto == null)
                        return;

                    imgFoto.Source = ImageSource.FromStream(() => { return FileFoto.GetStream(); });
                    Image = File.ReadAllBytes(FileFoto.Path);
                }
                catch (Exception)
                {
                    Message("Advertencia", "Se produjo un error al tomar la fotografia.");
                }
            }
            else
            {
                await Permissions.RequestAsync<Permissions.Camera>();
            }
        }
        private async void btnAdd_Clicked(object sender, EventArgs e)
        {
            var current = Connectivity.NetworkAccess;
            if (current != NetworkAccess.Internet)
            {
                Message("Advertencia", "Actualmente no cuenta con acceso a internet");
                return;
            }

            Byte[] audio;
            if (Image == null)
            {
                Image = sitio.FirmaDigital;
            }

            if (string.IsNullOrEmpty(txtLatitude.Text) || string.IsNullOrEmpty(txtLongitude.Text))
            {
                Message("Aviso", "No hay una localizacion");
                //getLatitudeAndLongitude();
                return;
            }

            if (txtDescription.Text.Length > 50)
            {
                Message("Aviso", "Debe escribir una ubicacion corta");
                return;
            }

            if (string.IsNullOrEmpty(txtDescription.Text))
            {
                Message("Aviso", "Debe escribir una breve Description");
                return;
            }

            if (!reproducir)
            {
                audio = sitio.AudioFile;
            }
            else
            {

                var length = ConvertAudioToByteArray().Length;
                if (length > 1500000)
                {
                    Message("Aviso", "El audio debe ser mas corto");
                    return;
                }
                audio = ConvertAudioToByteArray();
            }


            try
            {
                UserDialogs.Instance.ShowLoading("Actualizando Sitio", MaskType.Clear);

                var sitio = new Sitio()
                {
                    Id = this.sitio.Id,
                    Latitud = double.Parse(txtLatitude.Text),
                    Longitud = double.Parse(txtLongitude.Text),
                    Descripcion = txtDescription.Text,
                    FirmaDigital = Image,
                    AudioFile = audio
                    //pathImage = FileFoto.Path
                };

                var result = await SitioController.UpdateSitio(sitio);

                UserDialogs.Instance.HideLoading();
                await Task.Delay(500);

                if (result)
                {
                    Message("Aviso", "Sitio actualizado correctamente");
                    //OnBackButtonPressed();
                    //clearComp();
                }
                else
                {
                    Message("Aviso", "No se pudo actualizar el sitio");
                }

            }
            catch (Exception ex)
            {
                UserDialogs.Instance.HideLoading();
                await Task.Delay(500);
                Message("Error: ", ex.Message);
            }
        }

        public byte[] ReadFully(Stream input)
        {
            byte[] buffer = new byte[16 * 1024];
            using (MemoryStream ms = new MemoryStream())
            {
                int read;
                while ((read = input.Read(buffer, 0, buffer.Length)) > 0)
                {
                    ms.Write(buffer, 0, read);
                }
                return ms.ToArray();
            }
        }
        private async void getLatitudeAndLongitude()
        {
            try
            {
                UserDialogs.Instance.ShowLoading("Obteniendo la nueva localizacion", MaskType.Clear);
                var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
                if (status == PermissionStatus.Granted)
                {
                    var localizacion = await Geolocation.GetLocationAsync();
                    txtLatitude.Text = Math.Round(localizacion.Latitude, 5) + "";
                    txtLongitude.Text = Math.Round(localizacion.Longitude, 5) + "";
                    UserDialogs.Instance.HideLoading();
                }
                else
                {
                    UserDialogs.Instance.HideLoading();
                    await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
                }
            }
            catch (Exception e)
            {
                UserDialogs.Instance.HideLoading();
                if (e.Message.Equals("Location services are not enabled on device."))
                {
                    Message("Error", "Servicio de localizacion no encendido");
                }
                else
                {
                    Message("Error", e.Message);
                }

            }
        }
        private void clearComp()
        {
            imgFoto.Source = "imgMuestra.png";
            txtDescription.Text = "";
            Image = null;
            getLatitudeAndLongitude();
        }
        #region Metodos Utiles
        private Byte[] ConvertAudioToByteArray()
        {
            Stream audioFile = audioRecorderService.GetAudioFileStream();

            //var mStream = new MemoryStream(File.ReadAllBytes(audioRecorderService.GetAudioFilePath()));
            //var mStream = (MemoryStream)audioFile;

            Byte[] bytes = ReadFully(audioFile);
            return bytes;
        }

        private Byte[] ConvertImageToByteArray()
        {
            if (FileFoto != null)
            {
                using (MemoryStream memory = new MemoryStream())
                {
                    Stream stream = FileFoto.GetStream();

                    stream.CopyTo(memory);

                    return memory.ToArray();
                }
            }

            return null;
        }

        private async void Message(string title, string message)
        {
            await DisplayAlert(title, message, "OK");
        }

        #endregion Metodos Utiles
        private ImageSource GetImageResourseFromBytes(byte[] bytes)
        {
            ImageSource retSource = null;

            if (bytes != null)
            {
                byte[] imageAsBytes = (byte[])bytes;
                retSource = ImageSource.FromStream(() => new MemoryStream(imageAsBytes));
            }

            return retSource;
        }

        private async void btnGrabar_Clicked(object sender, EventArgs e)
        {
            try
            {
                var status = await Permissions.RequestAsync<Permissions.Microphone>();
                var status2 = await Permissions.RequestAsync<Permissions.StorageRead>();
                var status3 = await Permissions.RequestAsync<Permissions.StorageWrite>();
                if (status != PermissionStatus.Granted & status2 != PermissionStatus.Granted & status3 != PermissionStatus.Granted)
                {
                    return; // si no tiene los permisos no avanza
                }

                if (audioRecorderService.IsRecording)
                {
                    await audioRecorderService.StopRecording();
                    audioPlayer.Play(audioRecorderService.GetAudioFilePath());
                    txtMessage.Text = "No esta grabando";
                    txtMessage.TextColor = Color.Red;
                    btnGrabar.Text = "Grabar audio";
                    reproducir = true;
                }
                else
                {
                    await audioRecorderService.StartRecording();
                    txtMessage.Text = "Esta grabando";
                    txtMessage.TextColor = Color.Green;
                    btnGrabar.Text = "Dejar de Grabar";
                    //reproducir = false;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }
        private void Button_Clicked(object sender, EventArgs e)
        {
            OnBackButtonPressed();
        }

        private void btnUpdateLocation_Clicked(object sender, EventArgs e)
        {
            getLatitudeAndLongitude();
        }
    }
}