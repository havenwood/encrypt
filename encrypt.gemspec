# coding: utf-8
require File.join(File.expand_path('../lib', __FILE__), 'encrypt/version')

Gem::Specification.new do |spec|
  spec.name          = 'encrypt'
  spec.version       = Encrypt::VERSION
  spec.authors       = ['Shannon Skipper']
  spec.email         = ['shannonskipper@gmail.com']
  spec.description   = %q{A gem for encrypting and decrypting a String with AES-256. Just supply the password.}
  spec.summary       = %q{Encrypts and decrypts strings with AES-256 in CTR mode. Encrypt uses Ruby 2.0's experimental refinements to extend String locally to add the #encrypt and #decrypt methods.}
  spec.homepage      = 'https://github.com/havenwood/encrypt#readme'
  spec.license       = 'MIT'
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
