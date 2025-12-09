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
        /// Number of Cuids to generate (1-100, default: 1)
        /// Example: 10
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }
    }
}
