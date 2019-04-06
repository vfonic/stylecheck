# frozen_string_literal: true

module Stylecheck
  class << self
    def root
      Gem::Specification.find_by(name: 'stylecheck').gem_dir
    end
  end
end

require 'stylecheck/rubocop_helpers'
require 'stylecheck/railtie' if defined?(Rails)
