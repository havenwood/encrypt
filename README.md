# Encrypt

A gem for encrypting and decrypting strings with AES-256. Just supply the password.

Encrypt uses an AES-256 cipher in CTR mode. A randomly generated salt and IV are publicly stored along with the encrypted data.

Encrypt makes use of Ruby 2.0's experimental refinements to extend String locally, adding the #encrypt and #decrypt methods. Activate the refinement with using: `using Encrypt`.

## Usage

```ruby
require 'encrypt'

using Encrypt

encrypted = 'super sekret'.encrypt 'passw0rd'
  #=> "\x04\b[\b\"\x15H\xEB\x8C\xE6\xA2r\xDA\x15\xDDH\xEB\xF2|\x11\xEFF\"\x15\xE9\xBB\xB1\xCEO\xB6Y\x19zk\xDD\xD5\x9A\xBD\x01\xF5\"\x11F/1\x1D;2g\xFC\xB8np\xBC"

encrypted.decrypt 'passw0rd'
  #=> "super sekret"
```

## Installation

    $ gem install encrypt
    
## Requirements

Ruby 2.0.0+ (uses [experimental refinements](http://www.ruby-doc.org/core-2.0/doc/syntax/refinements_rdoc.html))

## Alternatives
The [RbNACL](https://github.com/cryptosphere/rbnacl#readme) gem has been more thoroughly vetted and is a recommended alternative.

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :pineapple:
