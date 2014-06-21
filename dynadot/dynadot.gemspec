$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dynadot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dynadot"
  s.version     = Dynadot::VERSION
  s.authors     = ["Uchenna"]
  s.email       = ["ramzauchenna@gmail.com"]
  s.homepage    = "http://facebook.com"
  s.summary     = "add all comands"
  s.description = "Simple gem to connect to dynadot api"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.5"

  s.add_development_dependency "sqlite3"
end
