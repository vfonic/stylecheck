# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'stylecheck'
  spec.version       = '1.0.4'

  spec.authors       = ['Grzesiek Kołodziejczyk', 'Maciej Małecki', 'Oskar Szrajer', 'Piotr Marciniak', 'Viktor Fonic']
  spec.summary       = 'Automatic RuboCop style check'
  spec.description   = 'Wraps rubocop for simple and consistent experience'
  spec.email         = 'contact@ada-dev.com'
  spec.homepage      = 'https://github.com/vfonic/stylecheck'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rake'
  spec.add_dependency 'rubocop-performance'
  spec.add_dependency 'rubocop-rspec'

  spec.add_development_dependency 'bundler'
end
