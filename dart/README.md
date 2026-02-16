# Cuid Generator API - Dart/Flutter Client

Cuid Generator is a tool for generating collision-resistant unique identifiers (Cuids). Cuids are optimized for horizontal scaling and sequential lookup performance in distributed systems.

[![pub package](https://img.shields.io/pub/v/apiverve_cuidgenerator.svg)](https://pub.dev/packages/apiverve_cuidgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Cuid Generator API](https://apiverve.com/marketplace/cuidgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_cuidgenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_cuidgenerator/apiverve_cuidgenerator.dart';

void main() async {
  final client = CuidgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'count': 1
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Cuid Generator API](https://apiverve.com/marketplace/cuidgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/cuidgenerator](https://docs.apiverve.com/ref/cuidgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
