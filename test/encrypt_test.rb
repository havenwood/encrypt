require_relative '../lib/encrypt'
require 'minitest/autorun'
require 'minitest/pride'

using Encrypt

describe Encrypt do
  before do
    @encrypted = 'sekret'.encrypt('passw0rd')
  end

  it 'encrypts' do
    @encrypted.bytes.count == 38
  end

  it 'decrypts' do
    assert_equal 'sekret', @encrypted.decrypt('passw0rd')
  end
end
