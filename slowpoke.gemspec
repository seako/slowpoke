# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "slowpoke/version"

Gem::Specification.new do |spec|
  spec.name          = "slowpoke"
  spec.version       = Slowpoke::VERSION
  spec.authors       = ["Andrew Kane"]
  spec.email         = ["andrew@chartkick.com"]
  spec.summary       = "Timeouts made easy"
  spec.description   = "Timeouts made easy"
  spec.homepage      = "https://github.com/ankane/slowpoke"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rack-timeout", ">= 0.1.0"
  spec.add_dependency "safely_block"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", ">= 5"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "pg"
end
