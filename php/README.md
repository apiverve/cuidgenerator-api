# Cuid Generator API - PHP Package

Cuid Generator is a tool for generating collision-resistant unique identifiers (Cuids). Cuids are optimized for horizontal scaling and sequential lookup performance in distributed systems.

## Installation

Install via Composer:

```bash
composer require apiverve/cuidgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Cuidgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['count' => 1]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Cuidgenerator\Client;
use APIVerve\Cuidgenerator\Exceptions\APIException;
use APIVerve\Cuidgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['count' => 1]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/cuidgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/cuidgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/cuidgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
