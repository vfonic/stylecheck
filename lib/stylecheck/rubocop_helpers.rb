# frozen_string_literal: true

require "fileutils"

module Stylecheck
  # helper to nicely update rubocop config
  module RubocopHelpers
    class << self
      def config
        if project_config_exists?
          project_config_path
        else
          stylecheck_config_path
        end
      end

      def project_config_exists?
        File.exist?(project_config_path)
      end

      def project_config_path
        File.join(Dir.pwd, ".rubocop.yml")
      end

      def stylecheck_config_path
        File.join(Stylecheck.root, "config", "rubocop.yml")
      end

      def template_config_path
        File.join(Stylecheck.root, "lib", "templates", "rubocop.yml")
      end
    end
  end
end
