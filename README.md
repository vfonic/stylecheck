# Stylecheck [![CircleCI](https://circleci.com/gh/vfonic/stylecheck.svg?style=shield&circle-token=1456797e032bbc052d99a3cd7f5cf45e84fb28e9)](https://circleci.com/gh/vfonic/stylecheck)

This gem should streamline using RuboCop for style checking and linting.

## Install

Add this line to your `Gemfile` and run `bundle install`:

```ruby
gem 'stylecheck', github: 'vfonic/stylecheck', require: false
```

Add this line to your `Rakefile`:

```ruby
require 'stylecheck/rake_tasks' unless Rails.env.production?
```

## Tasks

There are three Rake tasks added by the gem:

### `rake style`

Run RuboCop with autocorrect.

Useful for local development.

### `rake style:rubocop:run`

Run RuboCop.

Useful for running this task on CI. Does not perform autocorrect.

### `rake style:rubocop:generate_local_config`

Generate local RuboCop config.

Useful for generating `rubocop.yml` config file for overriding RuboCop config options specified in stylecheck gem.
