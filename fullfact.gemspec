lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fullfact/version'

Gem::Specification.new do |spec|
  spec.name          = "fullfact"
  spec.version       = FullFact::VERSION
  spec.authors       = ["ldodds"]
  spec.email         = ["leigh@ldodds.com"]
  spec.description   = %q{Full Fact API client library}
  spec.summary       = %q{Full Fact API  client library}
  spec.homepage      = "https://github.com/ldodds/fullfact.rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ['~> 2.7.0']

  spec.add_dependency "rest-client", ">= 2.1.0"
  spec.add_dependency "json"
  spec.add_dependency "dotenv"
  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_dependency "rake"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-rcov"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-pride"
  spec.add_development_dependency "rspec-expectations"
  spec.add_development_dependency "coveralls"
#  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"

end