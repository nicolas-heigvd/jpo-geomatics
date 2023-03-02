source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0', '>= 6.0.2.1'
# Rails internals (application bootup, plugins, generators, rake tasks)
gem 'railties', '~> 6.0', '>= 6.0.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.4.6', '>= 1.4.6'
# Use Puma as the app server
gem 'puma', '~> 4.3', '>= 4.3.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.2', '>= 5.2.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.10'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.13'

# Use jquery
gem 'jquery-rails', '~> 4.3', '>= 4.3.5'

# Use bulma-rails, a modern CSS framework based on Flexbox
gem 'bulma-rails', '~> 0.8.0'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '~> 1.4', '>= 1.4.6', require: false

# Ruby client library for Travis CI
gem 'travis', '~> 1.8', '>= 1.8.11'
# Ruby implementation of the Coveralls API
gem 'coveralls', '~> 0.8.23', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1', '>= 11.1.1', platforms: %i[mri mingw x64_mingw]
  # Automatic Ruby code style checking tool
  gem 'rubocop', '~> 0.80.1'
  # Code style checking for RSpec files
  gem 'rubocop-rspec', '~> 1.38', '>= 1.38.1'
  # Collection of RuboCop cops to check performance optimizations in Ruby code
  gem 'rubocop-performance', '~> 1.5', '>= 1.5.2'
  # BDD for Ruby
  gem 'rspec', '~> 3.9'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2', '>= 3.2.1'
  gem 'web-console', '~> 4.0', '>= 4.0.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.31'
  # WebDrive to write automated tests of websites
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
  gem 'webdrivers', '~> 4.2'
  # Make-like program implemented in Ruby (Travis CI)
  gem 'rake', '~> 13.0', '>= 13.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1.2019', '>= 1.2019.3', platforms: %i[mingw mswin x64_mingw jruby]