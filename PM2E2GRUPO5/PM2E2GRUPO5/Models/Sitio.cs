using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace PM2E2GRUPO5.Models
{
    public class Sitio
    {
        [JsonProperty("Id")]
        public int Id { get; set; }

        [JsonProperty("Latitud")]
        public double Latitud { get; set; }

        [JsonProperty("Longitud")]
        public double Longitud { get; set; }

        [JsonProperty("Descripcion")]
        public String Descripcion { get; set; }

        [JsonProperty("FirmaDigital")]
        public byte[] FirmaDigital { get; set; }

        [JsonProperty("AudioFile")]
        public byte[] AudioFile { get; set; }

    }

}

