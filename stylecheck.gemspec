# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stylecheck/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 3.1'
  spec.name          = 'stylecheck'
  spec.version       = Stylecheck::VERSION

  spec.authors       = ['Grzesiek Kołodziejczyk', 'Maciej Małecki', 'Oskar Szrajer', 'Piotr Marciniak', 'Viktor Fonic']
  spec.summary       = 'Automatic RuboCop style check'
  spec.description   = 'Wraps rubocop for simple and consistent experience'
  spec.email         = 'contact@ada-dev.com'
  spec.homepage      = 'https://github.com/vfonic/stylecheck'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'database_validations'
  spec.add_dependency 'rake'
  spec.add_dependency 'rubocop'
  spec.add_dependency 'rubocop-factory_bot'
  spec.add_dependency 'rubocop-performance'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rake'
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'rubocop-rspec_rails'

  spec.metadata['rubygems_mfa_required'] = 'true'
end
