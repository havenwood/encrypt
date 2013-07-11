# Encrypt

Simple Ruby encryption gem.

## Installation

    $ gem install encrypt

## Usage

```ruby
require 'encrypt'

encrypted = Encrypt.encrypt 'sekret message', 'passw0rd'
  #=> "\xFDB\xDF@b\xD0\xB8>\xEB\xEA\xD3\xA69\v"

Encrypt.decrypt encrypted, 'passw0rd'
  #=> "sekret message"
```

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :cake:
