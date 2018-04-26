source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# base
gem 'rails', '~> 5.1.6'
# database
gem 'mysql2', '>= 0.3.18', '< 0.6.0'
# server
gem 'puma', '~> 3.7'

# view
gem 'sass-rails', '~> 5.0'
gem 'bootstrap'
gem 'jbuilder', '~> 2.5'
gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'popper_js'
gem 'tether-rails'
gem 'jquery-turbolinks'

gem 'devise'
gem 'sidekiq'
gem 'activeadmin'
gem 'kaminari'
gem 'paperclip'
gem 'redis'
gem 'sinatra'
gem 'aws-sdk', '~> 2.3'

group :development, :test do
  gem 'byebug', platforms: %I[mri mingw x64_mingw]
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'faker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  gem 'spring'
  gem 'better_errors'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'binding_of_caller'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'annotate'
  gem 'rubocop'
  gem 'capistrano'
  gem 'overcommit'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano-rails'
  gem 'capistrano-nginx'
  gem 'capistrano3-puma'
  gem 'capistrano-sidekiq'
end
