# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/korok_uso/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-korok_uso"
  spec.version       = Ruboty::KorokUso::VERSION
  spec.authors       = ["No6Kitsunegasaki\n\n"]
  spec.email         = ["none.gingerale@gmail.com\n\n"]

  spec.summary       = %q{USO800}
  spec.description   = %q{a kawaii fox lie.}
  spec.homepage      = "https://github.com/No6Kitsunegasaki/ruboty-korok_uso"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
