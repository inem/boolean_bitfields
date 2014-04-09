$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "boolean_bitfields/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "boolean_bitfields"
  s.version     = BooleanBitfields::VERSION
  s.authors     = ["Ivan Nemytchenko"]
  s.email       = ["nemytchenko@gmail.com"]
  s.homepage    = "http://github.com/inem/boolean_bitfields"
  s.summary     = "Your mysql bit fields will behave like regular boolean fields"
  s.description = "yay"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord"#, "~> 4.0.4"

  s.add_development_dependency "sqlite3"
end
