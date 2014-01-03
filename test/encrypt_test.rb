require_relative '../lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'

using Encrypt

describe Encrypt do
  before do
    @encrypted = Encrypt.dump 'sekret', 'passw0rd'
  end

  it 'encrypts' do
    assert @encrypted != 'sekret'
  end
  
  it 'does not decrypt with incorrect key' do
    assert_raises(OpenSSL::Cipher::CipherError) do
      Encrypt.load @encrypted, 'wrong pwd'
    end
  end

  it 'decrypts' do
    assert_equal 'sekret', Encrypt.load(@encrypted, 'passw0rd')
  end
end
