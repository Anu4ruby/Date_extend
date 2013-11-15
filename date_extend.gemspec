# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date_extend/version'

Gem::Specification.new do |spec|
  spec.name          = "date_extend"
  spec.version       = DateExtend::VERSION
  spec.authors       = ["Anupama Iyengar"]
  spec.email         = ["sadicarnot@gmail.com"]
  spec.description   = %q{extend Date class}
  spec.summary       = %q{more methods added to the Date class}
  spec.homepage      = ""

  spec.files         = Dir["README.md","Gemfile","Rakefile", "spec/*", "lib/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
