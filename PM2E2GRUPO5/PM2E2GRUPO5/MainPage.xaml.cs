using Plugin.AudioRecorder;
using PM2E2GRUPO5.Controller;
using PM2E2GRUPO5.Models;
using PM2E2GRUPO5.Views;
using SignaturePad.Forms;
using System;
using System.IO;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace PM2E2GRUPO5
{
    public partial class MainPage : ContentPage
    {
        byte[] ImageBytes;
        private AudioRecorderService audioRecorderService = new AudioRecorderService()
        {
            StopRecordingOnSilence = false,
            StopRecordingAfterTimeout = false
        };

        private AudioPlayer audioPlayer = new AudioPlayer();

        private bool isPlaying = false;

        private ActivityIndicator loadingIndicator;

        public MainPage()
        {
            InitializeComponent();
            loadingIndicator = new ActivityIndicator
            {
                IsRunning = false,
                IsVisible = false,
                Color = Color.Black,
                VerticalOptions = LayoutOptions.CenterAndExpand,
                HorizontalOptions = LayoutOptions.CenterAndExpand
            };
            Content = new ScrollView { Content = new StackLayout { Children = { loadingIndicator, mainLayout } } };
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            getLatitudeAndLongitude();
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            // Acciones al hacer clic en el PadView
        }

        private async void btnAdd_Clicked(object sender, EventArgs e)
        {
            var current = Connectivity.NetworkAccess;

            if (current != NetworkAccess.Internet)
            {
                await DisplayAlert("Advertencia", "Actualmente no cuenta con acceso a internet", "OK");
                return;
            }

            if (PadView.IsBlank)
            {
                await DisplayAlert("Aviso", "Debe dibujar algo en el Pad", "OK");
                return;
            }

            var stream = await PadView.GetImageStreamAsync(SignatureImageFormat.Png);
            ImageBytes = await ConvertStreamToByteArray(stream);

            if (ImageBytes == null || ImageBytes.Length == 0)
            {
                await DisplayAlert("Aviso", "No se pudo obtener la imagen del Pad", "OK");
                return;
            }

            if (string.IsNullOrEmpty(txtLatitude.Text) || string.IsNullOrEmpty(txtLongitude.Text))
            {
                await DisplayAlert("Aviso", "Aún no se ha obtenido la ubicación", "OK");
                getLatitudeAndLongitude();
                return;
            }

            if (string.IsNullOrEmpty(txtDescription.Text))
            {
                await DisplayAlert("Aviso", "Debe escribir una breve descripción", "OK");
                return;
            }

            if (txtDescription.Text.Length > 50)
            {
                await DisplayAlert("Aviso", "Debe escribir una descripción más corta", "OK");
                return;
            }

            if (!isPlaying)
            {
                await DisplayAlert("Aviso", "No se ha grabado ningún audio", "OK");
                return;
            }

            var audioBytes = ConvertAudioToByteArray();

            if (audioBytes.Length > 1500000)
            {
                await DisplayAlert("Aviso", "El audio debe ser más corto", "OK");
                return;
            }

            try
            {
                loadingIndicator.IsRunning = true;
                loadingIndicator.IsVisible = true;

                var sitio = new Sitio()
                {
                    Latitud = double.Parse(txtLatitude.Text),
                    Longitud = double.Parse(txtLongitude.Text),
                    Descripcion = txtDescription.Text,
                    FirmaDigital = ImageBytes,
                    AudioFile = audioBytes
                };

                var result = await SitioController.CreateSite(sitio);

                loadingIndicator.IsRunning = false;
                loadingIndicator.IsVisible = false;
                await Task.Delay(500);

                if (result)
                {
                    await DisplayAlert("Aviso", "Sitio agregado correctamente", "OK");
                    ClearComponents();
                }
                else
                {
                    await DisplayAlert("Aviso", "No se pudo agregar el sitio", "OK");
                }
            }
            catch (Exception ex)
            {
                loadingIndicator.IsRunning = false;
                loadingIndicator.IsVisible = false;
                await Task.Delay(500);
                await DisplayAlert("Error", ex.Message, "OK");
            }
        }

        private async Task<byte[]> ConvertStreamToByteArray(Stream stream)
        {
            using (MemoryStream memoryStream = new MemoryStream())
            {
                await stream.CopyToAsync(memoryStream);
                return memoryStream.ToArray();
            }
        }

        private async void btnList_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new ListSite());
        }

        private async void getLatitudeAndLongitude()
        {
            try
            {
                var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();

                if (status != PermissionStatus.Granted)
                {
                    status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
                    if (status != PermissionStatus.Granted)
                        return;
                }

                var location = await Geolocation.GetLocationAsync();
                txtLatitude.Text = Math.Round(location.Latitude, 5).ToString();
                txtLongitude.Text = Math.Round(location.Longitude, 5).ToString();
            }
            catch (Exception ex)
            {
                if (ex.Message.Equals("Location services are not enabled on device."))
                {
                    await DisplayAlert("Error", "Servicio de localización no encendido", "OK");
                }
                else
                {
                    await DisplayAlert("Error", ex.Message, "OK");
                }
            }
        }

        private void ClearComponents()
        {
            PadView.Clear();
            txtDescription.Text = "";
            ImageBytes = null;
            getLatitudeAndLongitude();
        }

        private byte[] ConvertAudioToByteArray()
        {
            Stream audioFile = audioRecorderService.GetAudioFileStream();
            byte[] bytes = ReadFully(audioFile);
            return bytes;
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

        private async void btnGrabar_Clicked(object sender, EventArgs e)
        {
            try
            {
                var status = await Permissions.RequestAsync<Permissions.Microphone>();
                var status2 = await Permissions.RequestAsync<Permissions.StorageRead>();
                var status3 = await Permissions.RequestAsync<Permissions.StorageWrite>();
                if (status != PermissionStatus.Granted || status2 != PermissionStatus.Granted || status3 != PermissionStatus.Granted)
                {
                    return; // si no tiene los permisos, no avanza
                }

                if (audioRecorderService.IsRecording)
                {
                    await audioRecorderService.StopRecording();
                    audioPlayer.Play(audioRecorderService.GetAudioFilePath());

                    txtMessage.Text = "No está grabando";
                    txtMessage.TextColor = Color.Red;
                    btnGrabar.Text = "Grabar audio";
                    isPlaying = true;
                }
                else
                {
                    await audioRecorderService.StartRecording();

                    txtMessage.Text = "Está grabando";
                    txtMessage.TextColor = Color.Green;
                    btnGrabar.Text = "Dejar de Grabar";
                    isPlaying = false;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }
    }
}
