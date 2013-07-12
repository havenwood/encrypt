# Encrypt

A gem for encrypting and decrypting a String with AES-256. Just supply the password.

Encrypt uses an AES-256 cipher in CTR mode. A randomly generated salt and IV are publicly stored as the 32 bytes preceding the encrypted data.

Encrypt makes use of Ruby 2.0's experimental refinements to extend String locally, adding #encrypt and #decrypt methods. Activate the refinement with using: `using Encrypt`.

## Usage

```ruby
require 'encrypt'

using Encrypt

encrypted = 'super sekret'.encrypt 'passw0rd'
  #=> "6+s\xEB\x00\xA4\x84\x96cF\xB8)\xBC\x7F\x8D?c\xF5~,Ps9\xC6\xD3\x7F\x86\xA4G\xAA\xAFV$\xD3:`\xCC\xD9\xF2\xD9\v\\\x87\xF1"

encrypted.decrypt 'passw0rd'
  #=> "super sekret"
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
