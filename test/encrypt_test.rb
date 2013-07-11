require_relative '../lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'

using Encrypt

describe Encrypt do
  it 'encrypts' do
    encrypted = 'sekret'.encrypt('passw0rd')
    assert_equal "\xFDB\xDF@b\xD0".bytes, encrypted.bytes
  end
  
  it 'decrypts' do
    encrypted = "\xFDB\xDF@b\xD0"
    assert_equal 'sekret', encrypted.decrypt('passw0rd')
  end
end
