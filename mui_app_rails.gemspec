# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mui_app_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "mui_app_rails"
  spec.version       = MuiAppRails::VERSION
  spec.authors       = ["shiguodong"]
  spec.email         = ["oreatial@gmail.com"]
  spec.summary       = %q{MUI APP framework}
  spec.description   = %q{MUI APP framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         =  Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency 'rails', '>= 3.1'
end
