# Encrypt

A gem for encrypting and decrypting strings with AES-256. Just supply a String and the password.

Encrypt uses an AES-256 cipher in CBC mode. A randomly generated salt and IV are publicly stored along with the encrypted data.

## Usage

```ruby
require 'encrypt'

encrypted = Encrypt.dump 'super sekret message', 'passw0rd'
  #=> "\x04\b[\b\"\x15\xEC\xD9O\xAE\xA7\x87\x91\x91\xF6\"\x168\x04\xE6\a\xA2\"\x15\x18iF\x9A5\x19G\xAA\xAAa\xC1\xC8\x06\x1A{T\"%8a\xFC&q2n\xB7\x8C\xA8\xD1\xAE\xEE\xEF\xDB\x94\xD4i\t\x1Coy\xA9\xEC\xEC\x1F\x1D\x0E\x9As\x85\xA9"

Encrypt.load encrypted, 'passw0rd'
  #=> "super sekret message"

Encrypt.load encrypted, 'wrong'
  #=> OpenSSL::Cipher::CipherError: bad decrypt
```

## Installation
```ruby
gem install encrypt
```

## Alternatives

Want a cipher other than AES-256 or a mode other than CBC? A project that has been more thoroughly vetted? Here are some alternatives:
* [Krypt](https://github.com/krypt/krypt#readme)
* [RbNACL](https://github.com/cryptosphere/rbnacl#readme)
* [libsodium](https://github.com/jedisct1/libsodium#readme)

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :pineapple:
