# Encrypt

A gem for encrypting and decrypting strings with AES-256. Just supply a String and the password.

Encrypt uses an AES-256 cipher in CBC mode. A randomly generated salt and IV are publicly stored along with the encrypted data.

## Usage

```ruby
require 'encrypt'

encrypted = Encrypt.dump 'super sekret message', 'passw0rd'
  #=>

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

Want a cipher other than AES-256 or a mode other than CBC? A project that has been more thoroughly vetted? Looking for something that works on Ruby 1.9? Here are some alternatives:
* [Krypt](https://github.com/krypt/krypt#readme)
* [RbNACL](https://github.com/cryptosphere/rbnacl#readme)
* [libsodium](https://github.com/jedisct1/libsodium#readme)

## Contributing

1. Fork it
2. Commit changes
3. Submit a Pull Request
4.  :pineapple:
