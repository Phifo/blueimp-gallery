# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blueimp/gallery/version'

Gem::Specification.new do |spec|
  spec.name          = "blueimp-gallery"
  spec.version       = Blueimp::Gallery::VERSION
  spec.authors       = ["Christopher Fernández"]
  spec.email         = ["fernandez.chl@gmail.com"]
  spec.description   = %q{blueimp Gallery for Rails}
  spec.summary       = %q{blueimp Gallery for Rails}
  spec.homepage      = "https://github.com/Phifo/blueimp-gallery"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
