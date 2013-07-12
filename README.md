# Encrypt

A gem for encrypting and decrypting strings with AES-256. Just supply the password.

Encrypt uses an AES-256 cipher in CTR mode. A randomly generated salt and IV are publicly stored as the 32 bytes preceding the encrypted data.

Encrypt makes use of Ruby 2.0's experimental refinements to extend String locally, adding the #encrypt and #decrypt methods. Activate the refinement with using: `using Encrypt`.

## Usage

```ruby
require 'encrypt'

using Encrypt

encrypted = 'super sekret'.encrypt 'passw0rd'
  #=> "\x13\xC4\x18\xE4\x1E.^HU0\rOZs\xFE7@\xC0\xB3\xB6\x9F\"\xE6M\xA6\xF4\xC4a\x85\x89\xECtW\xF9\x9DN\xA1_6\x8Bd\x0F\x19b"

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
