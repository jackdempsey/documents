$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "documents/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "documents"
  s.version     = Documents::VERSION
  s.authors     = ["Jack Dempsey"]
  s.email       = ["jack.dempsey@gmail.com"]
  s.homepage    = ""
  s.summary     = "Rails 3 engine that provides basic document uploading and management functionality"
  s.description = "Rails 3 engine that provides basic document uploading and management functionality"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.7"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
