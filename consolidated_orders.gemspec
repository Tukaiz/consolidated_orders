# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'consolidated_orders/version'

Gem::Specification.new do |spec|
  spec.name          = "consolidated_orders"
  spec.version       = ConsolidatedOrders::VERSION
  spec.authors       = ["Eric Agnew"]
  spec.email         = ["wenga.eric@gmail.com"]

  spec.summary       = "Consolidated Order Feature"
  spec.description   = "Consolidated Order Feature"
  spec.homepage      = "https://github.com/Tukaiz/consolidated_orders"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
