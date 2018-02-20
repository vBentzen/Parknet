source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'
gem 'devise'
gem 'puma',         '3.9.1'
gem 'whenever', :require => false
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass'
gem 'figaro'
# Use bcrypt for encrypting User passwords
gem 'bcrypt'

group :production do
	# Use Postgres for production environment (As Heroku only supports this)
  gem 'pg', '~> 0.15'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  gem 'byebug'
  gem 'spring'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'faker'
  gem "factory_bot_rails", "~> 4.0"
  gem 'pry-rails'
end