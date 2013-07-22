# Encrypt

A gem for encrypting and decrypting strings with AES-256. Just supply the password.

Encrypt uses an AES-256 cipher in CBC mode. A randomly generated salt and IV are publicly stored along with the encrypted data.

Encrypt makes use of refinements to extend String locally, adding the #encrypt and #decrypt methods. Activate the refinement with `using Encrypt`.

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

Want a cipher other than AES-256 or a mode other than CTR? A project that has been more thoroughly vetted? Looking for something that works on Ruby 1.9? Here are some alternatives:
* [Krypt](https://github.com/krypt/krypt#readme)
* [RbNACL](https://github.com/cryptosphere/rbnacl#readme)
* [libsodium](https://github.com/jedisct1/libsodium#readme)

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :pineapple:
