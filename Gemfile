source 'https://rubygems.org'
gem 'rails', '3.2.3'
gem 'bootstrap-sass'
group :production, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

group :test do
  gem "cucumber-rails", ">= 1.3.0"
end
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem "mysql"
gem "rspec-rails", ">= 2.9.0.rc2", :group => [:development, :test]
gem "factory_girl_rails", ">= 3.1.0", :group => [:development, :test]
gem "email_spec", ">= 1.2.1", :group => :test
gem "capybara", ">= 1.1.2", :group => :test
gem "database_cleaner", ">= 0.7.2", :group => :test
gem "launchy", ">= 2.1.0", :group => :test
gem "devise", ">= 2.1.0.rc"
