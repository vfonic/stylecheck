# Stylecheck

This gem should streamline using of rubocop and potentially other automated stylecheck tools.

# install

Just add to gemfile and new rake task should be available
(if not add `require "rake_task"` to your Rakefile)

* `bundle exec rake style`

This for now just prepares a rubocop config and runs the rubocop check
