require 'openssl'

module Encrypt
  refine String do
    def encrypt key
      cipher = OpenSSL::Cipher::AES256.new(:CTR)
      cipher.encrypt
      iv = cipher.random_iv
      salt = OpenSSL::Random.random_bytes(16)
      cipher.key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(key, salt, 20000, 32)
      Marshal.dump([salt, iv, cipher.update(self) << cipher.final])
    end

    def decrypt key
      if self.bytesize > 32
        salt, iv, encrypted_data = Marshal.load(self)
        cipher = OpenSSL::Cipher::AES256.new(:CTR)
        cipher.decrypt
        cipher.key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(key, salt, 20000, 32)
        cipher.iv = iv
        cipher.update(encrypted_data) << cipher.final
      else
        nil
      end
    end
  end
end
