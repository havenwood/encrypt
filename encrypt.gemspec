# coding: utf-8
require File.join(File.expand_path('../lib', __FILE__), 'encrypt/version')

Gem::Specification.new do |spec|
  spec.name          = 'encrypt'
  spec.version       = Encrypt::VERSION
  spec.authors       = ['Shannon Skipper']
  spec.email         = ['shannonskipper@gmail.com']
  spec.description   = %q{Encrypt and decrypt strings with AES-256. Just supply the password.}
  spec.summary       = %q{Encrypt and decrypt strings with AES-256 in CBC mode.}
  spec.homepage      = 'https://github.com/havenwood/encrypt#readme'
  spec.license       = 'MIT'
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
