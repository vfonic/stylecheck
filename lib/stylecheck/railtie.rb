# frozen_string_literal: true

module Stylecheck
  # auto loading rake tasks
  class Railtie < Rails::Railtie
    rake_tasks do
      rake_task_paths = File.expand_path("lib/tasks/*.rake", __dir__)
      Dir[rake_task_paths].each { |f| load f }
    end
  end
end
