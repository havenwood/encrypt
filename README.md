# Encrypt

A simple Ruby gem for encrypting and decrypting strings with AES.

Encrypt uses Ruby 2.0's experimental refinements to extend String locally to add the #encrypt and #decrypt methods. Activate the refinement with using: `using Encrypt`.

## Usage

```ruby
require 'encrypt'

using Encrypt

encrypted = 'sekret msg'.encrypt 'passw0rd'
  #=> "\xFDB\xDF@b\xD0\xB8>\xFD\xFE"

encrypted.decrypt 'passw0rd'
  #=> "sekret msg"
```

## Installation

    $ gem install encrypt
    
## Requirements

Ruby 2.0.0+ (uses [experimental refinements](http://www.ruby-doc.org/core-2.0/doc/syntax/refinements_rdoc.html))

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :cake:
