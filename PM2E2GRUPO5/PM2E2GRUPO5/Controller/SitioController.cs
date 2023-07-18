using Newtonsoft.Json;
using PM2E2GRUPO5.Models;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace PM2E2GRUPO5.Controller
{
    public class SitioController
    {
        private static readonly string URL_SITIOS = "https://apisitios.alsansoft.com/";
        private static HttpClient client = new HttpClient();

        public static async Task<List<Sitio>> GetAllSite()
        {
            List<Sitio> listBooks = new List<Sitio>();
            try
            {
                var uri = new Uri(URL_SITIOS + "Lista.php");
                var response = await client.GetAsync(uri);
                if (response.IsSuccessStatusCode)
                {
                    var content = await response.Content.ReadAsStringAsync();
                    listBooks = JsonConvert.DeserializeObject<List<Sitio>>(content);
                    return listBooks;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return listBooks;
        }

        public static async Task<bool> DeleteSite(string id)
        {
            try
            {
                var uri = new Uri(URL_SITIOS + "Delete.php?Id=" + id);
                var result = await client.DeleteAsync(uri);
                if (result.IsSuccessStatusCode)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return false;
        }

        public static async Task<bool> CreateSite(Sitio sitio)
        {
            try
            {
                var requestUri = new Uri(URL_SITIOS + "Create.php");
                var jsonObject = JsonConvert.SerializeObject(sitio);
                var content = new StringContent(jsonObject, Encoding.UTF8, "application/json");
                var response = await client.PostAsync(requestUri, content);
                if (response.IsSuccessStatusCode)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return false;
        }


        public static async Task<bool> UpdateSitio(Sitio sitio)
        {
            try
            {
                var requestUri = new Uri(URL_SITIOS + "Update.php");
                var jsonObject = JsonConvert.SerializeObject(sitio);
                var content = new StringContent(jsonObject, Encoding.UTF8, "application/json");
                var response = await client.PutAsync(requestUri, content);
                if (response.IsSuccessStatusCode)
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return false;
        }
    }
}
