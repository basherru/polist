# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "polist/version"

Gem::Specification.new do |spec|
  spec.name          = "polist"
  spec.version       = Polist::VERSION
  spec.authors       = ["Yuri Smirnov"]
  spec.email         = ["tycooon@yandex.ru"]

  spec.summary       = "A gem for creating simple service classes."
  spec.description   = "Polist is a gem for creating simple service classes."
  spec.homepage      = "https://github.com/umbrellio/polist"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "tainbox"
  spec.add_runtime_dependency "plissken", ">= 0.3"
  spec.add_runtime_dependency "activemodel", ">= 3.0"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
