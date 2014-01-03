require 'openssl'

module Encrypt
  def self.dump string, key
    cipher = OpenSSL::Cipher::AES256.new(:CBC)
    cipher.encrypt
    salt = OpenSSL::Random.random_bytes(16)
    cipher.key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(key, salt, 20000, 32)
    iv = cipher.random_iv
    Marshal.dump([salt, iv, cipher.update(string) << cipher.final])
  end

  def self.load string, key
    salt, iv, encrypted = Marshal.load(string)
    cipher = OpenSSL::Cipher::AES256.new(:CBC)
    cipher.decrypt
    cipher.key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(key, salt, 20000, 32)
    cipher.iv = iv
    cipher.update(encrypted) << cipher.final
  end
end
