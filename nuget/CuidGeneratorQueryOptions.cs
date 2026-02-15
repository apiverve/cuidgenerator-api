using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CuidGenerator
{
    /// <summary>
    /// Query options for the Cuid Generator API
    /// </summary>
    public class CuidGeneratorQueryOptions
    {
        /// <summary>
        /// Number of Cuids to generate
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
