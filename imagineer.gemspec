# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'imagineer/version'

Gem::Specification.new do |spec|
  spec.name          = "imagineer"
  spec.version       = Imagineer::VERSION
  spec.authors       = ["Josh Adams"]
  spec.email         = ["josh@isotope11.com"]
  spec.description   = %q{A library for doing things with images...}
  spec.summary       = %q{Don't use this yet...}
  spec.homepage      = "http://github.com/knewter/imagineer"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'hornetseye-ffmpeg'
  spec.add_dependency 'hornetseye-xorg'
  spec.add_dependency 'hornetseye-v4l2'
  spec.add_dependency 'hornetseye-rmagick'
  spec.add_dependency 'chunky_png'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
