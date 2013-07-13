require 'openssl'

module Encrypt
  refine String do
    def encrypt key
      cipher = OpenSSL::Cipher::AES256.new(:CTR)
      cipher.encrypt
      iv = cipher.random_iv
      salt = OpenSSL::Random.random_bytes(16)
      cipher.key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(key, salt, 20000, 32)
      salt << iv << cipher.update(self) << cipher.final
    end

    def decrypt key
      if self.bytesize > 32
        cipher = OpenSSL::Cipher::AES256.new(:CTR)
        cipher.decrypt
        salt = self.byteslice(0..15)
        cipher.key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(key, salt, 20000, 32)
        cipher.iv = self.byteslice(16..31)
        cipher.update(self.byteslice(32..-1)) << cipher.final
      else
        nil
      end
    end
  end
end
