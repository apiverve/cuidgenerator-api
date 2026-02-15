# Cuid Generator API - Go Client

Cuid Generator is a tool for generating collision-resistant unique identifiers (Cuids). Cuids are optimized for horizontal scaling and sequential lookup performance in distributed systems.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Cuid Generator API](https://apiverve.com/marketplace/cuidgenerator?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/cuidgenerator-api/go
```

---

## Configuration

Before using the Cuid Generator API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Cuid Generator API documentation is found here: [https://docs.apiverve.com/ref/cuidgenerator](https://docs.apiverve.com/ref/cuidgenerator?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/cuidgenerator-api/go"
)

func main() {
    // Create a new client
    client := cuidgenerator.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "count": 1
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "cuids": [
      "cmhzu69ab000a0014gltq2gcz",
      "cmhzu69ab000b0014dux04sjb",
      "cmhzu69ab000c00144z2o1nie",
      "cmhzu69ab000d0014xwe6y6vt",
      "cmhzu69ab000e001483anbp0u",
      "cmhzu69ab000f00147idczfjv",
      "cmhzu69ab000g00146cv0tjqx",
      "cmhzu69ab000h0014hgohqbqj",
      "cmhzu69ab000i0014cmo67sg6",
      "cmhzu69ab000j0014spipnnvw"
    ],
    "count": 10,
    "format": "c + timestamp + counter + fingerprint + random",
    "collision_resistant": true,
    "sortable": true
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
