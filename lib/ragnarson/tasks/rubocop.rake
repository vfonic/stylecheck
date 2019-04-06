require "ragnarson/stylecheck"
require "fileutils"

namespace :style do
  namespace :rubocop do
    desc "Run RuboCop with auto_correct"
    task :run, [:with_autocorrect] do |t, with_autocorrect|
      options = ["-DRES", "-c", Ragnarson::Stylecheck::RubocopHelpers.config]
      options << "--safe-auto-correct" if with_autocorrect
      sh "bundle exec rubocop #{options.join(" ")}" do |ok, _res|
        abort "Fix code style errors" unless ok
      end
    end

    desc "Generate local RuboCop config"
    task :generate_local_config do
      template_config_path = Ragnarson::Stylecheck::RubocopHelpers.template_config_path
      project_config_path = Ragnarson::Stylecheck::RubocopHelpers.project_config_path
      FileUtils.cp(template_config_path, project_config_path)
    end
  end
end

desc "Check codestyle and fix common errors"
task :style do
  Rake::Task["style:rubocop:run"].invoke(true)
end
