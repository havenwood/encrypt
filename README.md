# Encrypt

A simple Ruby encryption gem.

## Usage

```ruby
require 'encrypt'

encrypted = Encrypt.encrypt 'sekret msg', 'passw0rd'
  #=> "\xFDB\xDF@b\xD0\xB8>\xFD\xFE"

Encrypt.decrypt encrypted, 'passw0rd'
  #=> "sekret msg"
```

## Installation

    $ gem install encrypt

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :cake:
