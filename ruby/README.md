# Cuid Generator API - Ruby Gem

Cuid Generator creates collision-resistant unique identifiers (CUIDs) on demand for distributed applications. Pass an optional count to receive an array of unique ID strings, with paid plans adding structural format and sortability details.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_cuidgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_cuidgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_cuidgenerator'

# Initialize the client
client = APIVerve::Cuidgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ count: 1 })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 1 })
  puts response["data"]
rescue APIVerve::Cuidgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Cuidgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Cuidgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/cuidgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/cuidgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/cuidgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
