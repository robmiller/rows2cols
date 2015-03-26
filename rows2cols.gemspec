# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rows2cols/version'

Gem::Specification.new do |spec|
  spec.name          = "rows2cols"
  spec.version       = Rows2cols::VERSION
  spec.authors       = ["Rob Miller"]
  spec.email         = ["rob@bigfish.co.uk"]
  spec.summary       = %q{Transpose rows of text into columns}
  spec.description   = %q{Transpose rows of text, either from standard input or from files, into a configurable number of columns with a configurable separator character.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
