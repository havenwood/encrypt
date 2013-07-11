require_relative '../lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'

describe Encrypt do
  it 'encrypts' do
    encrypted = Encrypt.encrypt('sekret', 'passw0rd')
    assert_equal "\xFDB\xDF@b\xD0".bytes, encrypted.bytes
  end
  
  it 'decrypts' do
    encrypted = "\xFDB\xDF@b\xD0"
    assert_equal 'sekret', Encrypt.decrypt(encrypted, 'passw0rd')
  end
end
