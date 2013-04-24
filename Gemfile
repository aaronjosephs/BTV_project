source 'http://rubygems.org'

gem 'rails', '3.2.3'
gem 'haml'
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'
group :development do
  gem 'sqlite3', '1.3.5'
  gem 'debugger'      
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
end

group :development, :test do
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'minitest'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
  gem 'therubyracer'
end


gem 'jquery-rails'


# Gems used for user login
gem 'omniauth'
gem 'omniauth-facebook'
# gem 'omniauth-identity'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

