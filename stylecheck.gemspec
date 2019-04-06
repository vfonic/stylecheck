Gem::Specification.new do |s|
  s.name          = "stylecheck"
  s.version       = "1.0.0"
  s.summary       = "Automatic RuboCop style check"
  s.description   = "Wraps rubocop for simple and consistent experience"
  s.authors       = ["Grzesiek Kołodziejczyk", "Maciej Małecki", "Oskar Szrajer", "Piotr Marciniak", "Viktor Fonic"]
  s.email         = "contact@ada-dev.com"
  s.files         = Dir["{config,lib}/**/*", "MIT-LICENSE", "README.md", "./"]
  s.homepage      = "https://github.com/vfonic/stylecheck"
  s.license       = "MIT"

  s.add_dependency "rake"
  s.add_dependency "rubocop"

  s.add_development_dependency "bundler"
end
