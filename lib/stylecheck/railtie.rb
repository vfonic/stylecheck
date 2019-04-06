module Stylecheck
  # auto loading rake tasks
  class Railtie < Rails::Railtie
    rake_tasks do
      rake_path = File.join(File.dirname(__FILE__), "../tasks/*.rake")
      Dir[rake_path].each { |f| load f }
    end
  end
end
