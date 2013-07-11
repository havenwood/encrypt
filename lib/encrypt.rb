require 'encrypt/version'
require 'openssl'

module Encrypt
  @aes = OpenSSL::Cipher.new('AES-256-CFB')

  def self.encrypt text, key
    @aes.encrypt
    crypt text, key
  end

  def self.decrypt text, key
    @aes.decrypt
    crypt text, key
  end

  def self.crypt text, key
    @aes.pkcs5_keyivgen(key)
    @aes.update(text) << @aes.final
  end
end
