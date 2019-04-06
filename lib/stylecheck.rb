# frozen_string_literal: true

require 'stylecheck/rubocop_helpers'
require 'stylecheck/railtie' if defined?(Rails)

module Stylecheck
  class << self
    def root
      Gem::Specification.find_by_name('stylecheck').gem_dir # rubocop:disable Rails/DynamicFindBy
    end
  end
end
