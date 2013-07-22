# Encrypt

A gem for encrypting and decrypting strings with AES-256. Just supply the password.

Encrypt uses an AES-256 cipher in CBC mode. A randomly generated salt and IV are publicly stored along with the encrypted data.

Encrypt makes use of refinements to extend String locally, adding the #encrypt and #decrypt methods. Activate the refinement with `using Encrypt`.

## Usage

```ruby
require 'encrypt'

using Encrypt

encrypted = 'super sekret'.encrypt 'passw0rd'
  #=> "\x04\b[\b\"\x15\x9FK\x18+\xA3X\x96S\xD9\xF2L. \x15\a2\"\x15,x)\xE2\xDA~\xA0\x90M\x06\xB0\xAC&\x89\xEFw\"\x15n\x90\xDCq2\x9B\xA8\x80Ca\xBB\x0F+NT\xD4"

encrypted.decrypt 'passw0rd'
  #=> "super sekret"
```

## Installation

    $ gem install encrypt
    
## Requirements

Ruby 2.0.0+ (uses [experimental refinements](http://www.ruby-doc.org/core-2.0/doc/syntax/refinements_rdoc.html))

## Alternatives

Want a cipher other than AES-256 or a mode other than CBC? A project that has been more thoroughly vetted? Looking for something that works on Ruby 1.9? Here are some alternatives:
* [Krypt](https://github.com/krypt/krypt#readme)
* [RbNACL](https://github.com/cryptosphere/rbnacl#readme)
* [libsodium](https://github.com/jedisct1/libsodium#readme)

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :pineapple:
