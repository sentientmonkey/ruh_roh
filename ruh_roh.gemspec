$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ruh_roh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruh_roh"
  s.version     = RuhRoh::VERSION
  s.authors     = ["Scott Windsor"]
  s.email       = ["swindsor@gmail.com"]
  s.homepage    = "http://scottwindsor.com"
  s.summary     = "Generates error pages based on existing layouts and styles"
  s.description = "Generates error pages based on existing layouts and styles"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_development_dependency "rspec-rails", "~> 2.0"
end
