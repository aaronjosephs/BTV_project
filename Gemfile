source 'http://rubygems.org'

gem 'rails', '3.2.3'
gem 'haml'
gem "google_calendar", "~> 0.3.0"

group :development do
  gem 'sqlite3', '1.3.5'
  gem 'debugger'   
  gem 'annotate'   
end

group :production do
  gem 'pg'
end

group :test do
  gem 'rspec-rails'
  gem 'cucumber-rails'
  gem 'cucumber-rails-training-wheels' #Virtually everyone still needs these.
  gem 'capybara', '2.0.3'
  gem 'database_cleaner'
  gem 'selenium-webdriver' #Javascript testing.
end

group :development, :test do
  gem 'launchy'
  gem 'minitest'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'uglifier', '1.2.3'
  gem 'therubyracer'
end


gem 'jquery-rails'
#To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Gems used for user login
gem 'omniauth'
gem 'omniauth-facebook'
gem 'activerecord-postgresql-adapter'
gem 'pg'
gem 'omniauth-identity'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

