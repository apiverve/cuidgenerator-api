# Cuid Generator API - Dart/Flutter Client

Cuid Generator creates collision-resistant unique identifiers (CUIDs) on demand for distributed applications. Pass an optional count to receive an array of unique ID strings, with paid plans adding structural format and sortability details.

[![pub package](https://img.shields.io/pub/v/apiverve_cuidgenerator.svg)](https://pub.dev/packages/apiverve_cuidgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Cuid Generator API](https://apiverve.com/marketplace/cuidgenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_cuidgenerator: ^1.2.3
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
      "cmj95ed27000000145v116use",
      "cmj95ed2700010014uuounuyc",
      "cmj95ed27000200147pwbz35y",
      "cmj95ed27000300142h9ivqrz",
      "cmj95ed27000400149ingh73n",
      "cmj95ed2700050014mg9alsah",
      "cmj95ed27000600149utx0fy3",
      "cmj95ed270007001467kspfhp",
      "cmj95ed2700080014n7ykgwxf",
      "cmj95ed2700090014rrnfehcn"
    ],
    "count": 10,
    "format": "c + timestamp + counter + fingerprint + random",
    "collision_resistant": true,
    "sortable": true
  }
}
```

## API Reference

- **API Home:** [Cuid Generator API](https://apiverve.com/marketplace/cuidgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/cuidgenerator](https://docs.apiverve.com/ref/cuidgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
