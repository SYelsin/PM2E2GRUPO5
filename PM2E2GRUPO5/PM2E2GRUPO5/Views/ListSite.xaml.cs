using PM2E2GRUPO5.Views;
using PM2E2GRUPO5.Controller;
using PM2E2GRUPO5.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Plugin.AudioRecorder;

namespace PM2E2GRUPO5.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ListSite : ContentPage
    {
        public Sitio Site;
        bool editando = false;

        private readonly AudioPlayer audioPlayer = new AudioPlayer();

        public ListSite()
        {
            InitializeComponent();
            LoadData();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            if (editando)
            {
                LoadData();
                editando = false;
                Site = null;
            }
        }

        private void listSites_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            try
            {
                Site = e.Item as Sitio;
            }
            catch (Exception ex)
            {
                Message("Error:", ex.Message);
            }
        }

        private async void btnDelete_Clicked(object sender, EventArgs e)
        {
            try
            {
                if (Site == null)
                {
                    Message("Aviso", "Seleccione un sitio");
                    return;
                }

                bool response = await Application.Current.MainPage.DisplayAlert("Aviso", "Seleccione la acción que desea realizar", "Eliminar", "Actualizar");

                if (response)
                {
                    // Delete
                    var sit = Site;
                    await DeleteSite(Site);
                }
                else
                {
                    editando = true;
                    await Navigation.PushModalAsync(new UpdateSite(Site));
                }
            }
            catch (Exception ex)
            {
                Message("Error:", ex.Message);
            }
        }

        private async Task DeleteSite(Sitio site)
        {
            var status = await DisplayAlert("Aviso", $"¿Desea eliminar el sitio con Descripcion: {Site.Descripcion}?", "SI", "NO");

            if (status)
            {
                var result = await SitioController.DeleteSite(Site.Id.ToString());

                if (result)
                {
                    Site = null;
                    LoadData();
                    Site = null;
                }
                else
                {
                    Message("Aviso", "No se pudo eliminar el sitio");
                }
            }
        }

        private async void btnViewMapa_Clicked(object sender, EventArgs e)
        {
            try
            {
                if (Site == null)
                {
                    Message("Aviso", "Seleccione un sitio");
                    return;
                }

                var status = await DisplayAlert("Aviso", $"¿Desea ir a la ubicacion indicada?", "SI", "NO");

                if (status)
                {
                    await Navigation.PushModalAsync(new MapPage(Site));
                }
            }
            catch (Exception ex)
            {
                Message("Error:", ex.Message);
            }
        }

        private async void LoadData()
        {
            try
            {
                activityIndicator.IsRunning = true;
                await Task.Delay(1000);
                listSites.ItemsSource = await SitioController.GetAllSite();
                var current = Connectivity.NetworkAccess;

                if (current != NetworkAccess.Internet)
                {
                    Message("Advertencia", "Actualmente no cuenta con acceso a internet");
                    return;
                }
            }
            catch (Exception ex)
            {
                Message("Error: ", ex.Message);
            }
            finally
            {
                activityIndicator.IsRunning = false;
            }
        }

        #region Metodos Utiles

        private async void Message(string title, string message)
        {
            await DisplayAlert(title, message, "OK");
        }

        #endregion Metodos Utiles

        private void listeAudio(byte[] bytes)
        {
            var folderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), "Audio");
            var nameAudio = "temp.wav";
            var fullPath = Path.Combine(folderPath, nameAudio);

            try
            {
                if (!Directory.Exists(folderPath))
                    Directory.CreateDirectory(folderPath);

                if (File.Exists(fullPath))
                    File.Delete(fullPath);

                using (var fileStream = new FileStream(fullPath, FileMode.Create, FileAccess.Write))
                {
                    fileStream.Write(bytes, 0, bytes.Length);
                }

                audioPlayer.Play(fullPath);
            }
            catch (Exception ex)
            {
                Message("Error: ", ex.Message);
            }
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            OnBackButtonPressed();
        }

        private void btnViewListen_Clicked(object sender, EventArgs e)
        {
            if (Site == null)
            {
                Message("Aviso", "Seleccione un sitio");
                return;
            }

            try
            {
                listeAudio(Site.AudioFile);
            }
            catch (Exception ex)
            {
                Message("Error:", ex.Message);
            }
        }
    }
}
