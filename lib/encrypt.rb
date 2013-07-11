require 'encrypt/version'
require 'openssl'

module Encrypt
  refine String do
    AES = OpenSSL::Cipher.new('AES-256-CFB')

    def encrypt key
      AES.encrypt
      crypt self, key
    end

    def decrypt key
      AES.decrypt
      crypt self, key
    end

    private

    def crypt text, key
      AES.pkcs5_keyivgen(key)
      AES.update(text) << AES.final
    end
  end
end
