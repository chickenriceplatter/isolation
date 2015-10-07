# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'isolation/version'

Gem::Specification.new do |spec|
  spec.name          = "isolation"
  spec.version       = Isolation::VERSION
  spec.authors       = ["chickenriceplatter"]
  spec.email         = ["chickenriceplatter@gmail.com"]

  spec.summary       = %q{A tool to run command-line commands in isolation.}
  spec.description   = %q{Use this tool to run a chain of commands. A command error will not halt the chain, the commands following the error will still be executed.}
  spec.homepage      = "https://github.com/chickenriceplatter/isolation"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
