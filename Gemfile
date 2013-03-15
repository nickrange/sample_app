source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'bootstrap-sass', '2.1'
gem 'pg', '0.12.2' # this is now the db on production and dev

group :development, :test do
  #gem 'sqlite3', '1.3.5' #using pg instead
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
  
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.2'

group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-inotify', '~> 0.9'
  gem 'libnotify', '0.5.9'
  #gem 'guard-spork', '1.2.0'
  gem 'guard-spork', :github => 'guard/guard-spork'
  gem 'spork', '0.9.2'
end

group :production do
  
end
