# libmpdclient-crystal

C-Bindings for `libmpdclient` to be used in Crystal projects

## Installation

1. Ensure that you have `libmpdclient` installed on your system

2. Add the dependency to your `shard.yml`:

```yaml
dependencies:
 libmpdclient:
   github: TravonteD/libmpdclient-crystal
```

3. Run `shards install`

## Usage

```crystal
require "libmpdclient"

PORT    = 6600 # Default port for mpd servers
TIMEOUT = 1000

connection = LibMpdClient.mpd_connection_new("localhost",
  PORT, TIMEOUT)

exit 1 if connection.nil?

if LibMpdClient.mpd_connection_get_error(connection) != LibMpdClient::MpdError::MPD_ERROR_SUCCESS
  p "#{LibMpdClient.mpd_connection_get_error_message(connection)}"
  LibMpdClient.mpd_connection_free(connection)
  exit 1
end

p "no errors"
```

## Contributing

1. Fork it (<https://github.com/travonted/libmpdclient-crystal/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [TravonteD](https://github.com/TravonteD) - creator and maintainer
