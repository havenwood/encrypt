require_relative '../lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'

using Encrypt

describe Encrypt do
  before do
    @encrypted = 'sekret'.encrypt('passw0rd')
  end

  it 'encrypts' do
    assert @encrypted != 'sekret'
  end
  
  it 'does not decrypt with incorrect key' do
    assert_raises(OpenSSL::Cipher::CipherError) { @encrypted.decrypt('pwd') }
  end

  it 'decrypts' do
    assert_equal 'sekret', @encrypted.decrypt('passw0rd')
  end
end
