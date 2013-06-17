# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'comfan/version'

Gem::Specification.new do |spec|
  spec.name          = 'comfan'
  spec.version       = Comfan::VERSION
  spec.authors       = ['Leif Gensert', 'Thomas Rudolf']
  spec.email         = ['leif@propertybase.com', 'thomas@propertybase.com']
  spec.description   = %q{This tool provides simple helper methods for ruby to provide functionality used in Salesforce}
  spec.summary       = %q{Ruby Helper Tools for Salesforce functionality}
  spec.homepage      = 'https://github.com/propertybase/comfan'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '< 2.14'
end
