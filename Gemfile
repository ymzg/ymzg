#source 'http://ruby.taobao.org/'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'rails_12factor', group: :production
gem 'pg'

group :assets do
	# Use SCSS for stylesheets
	gem 'sass-rails', '~> 4.0.0'

	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '>= 1.3.0'
end
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem 'paperclip', '~> 3.0'
gem 'protected_attributes'

	# See https://github.com/sstephenson/execjs#readme for more supported runtimes
	# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

#A simple fast web server
gem "puma"

gem 'will_paginate', '~> 3.0'

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'simplecov', :require => false
  gem 'sqlite3'

  # Add functional/system test gems
  gem 'cucumber'
  gem 'selenium-webdriver'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'rails_log_stdout', github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'

  # Use pg as database to support heroku
  gem 'pg'
  gem 'execjs' 
  gem 'therubyracer'
end

if RUBY_VERSION =~ /1.9/ # assuming you're running Ruby ~1.9
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

