$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ruh_roh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ruh_roh"
  s.version     = RuhRoh::VERSION
  s.authors     = ["Scott Windsor"]
  s.email       = ["swindsor@gmail.com"]
  s.homepage    = "http://github.com/sentientmonkey/ruh_roh"
  s.summary     = "RuhRoh is a rails plugin that allows you pre-generate error pages with the full rails stack available."
  s.description = <<-EOS
    While rails' default error pages are great, they look totally unprofessional for any real site.
    RuRoh provides a quick and easy way to have nicely rendered error pages generated from your stack
    during deployment. This allows you to re-use your existing layouts and customize your error pages
    without having to re-create them on the fly (which could result in further errors). The pages can
    be generated via capistrano during deploy, or generated during a post-commit hook similar to asset
    pipeline resources.
   EOS


  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.12"
  s.add_development_dependency "rspec-rails", "~> 2.0"
end
