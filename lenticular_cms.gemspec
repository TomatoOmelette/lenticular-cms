$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lenticular_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lenticular_cms"
  s.version     = LenticularCms::VERSION
  s.authors     = ["Jonathan Greeley"]
  s.email       = ["jon.r.greeley@gmail.com"]
  s.homepage    = "http://www.jongreeley.com"
  s.summary     = "A minimal and adaptable CMS for Ruby on Rails."
  s.description = "An open source CMS, designed from the ground-up to be ultralight and adaptable."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.rc1", "< 5.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.test_files = Dir["spec/**/*"]
end