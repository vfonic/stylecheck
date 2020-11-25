# frozen_string_literal: true

require 'stylecheck'
require 'fileutils'

namespace :style do
  namespace :rubocop do
    desc 'Run RuboCop'
    task :run, [:with_autocorrect] do |_task, args|
      options = ['-DES', '-c', Stylecheck::RubocopHelpers.config]
      options << '-A' if args[:with_autocorrect]
      sh "bundle exec rubocop #{options.join(' ')}" do |ok, _res|
        abort 'Fix code style errors' unless ok
      end
    end

    desc 'Generate local RuboCop config'
    task :generate_local_config do
      template_config_path = Stylecheck::RubocopHelpers.template_config_path
      project_config_path = Stylecheck::RubocopHelpers.project_config_path
      FileUtils.cp(template_config_path, project_config_path)
      puts 'Generated local rubocop configuration file at `config/rubocop.yml`'
    end
  end
end

desc 'Run RuboCop with autocorrect'
task :style do
  Rake::Task['style:rubocop:run'].invoke(true)
end
