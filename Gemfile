source 'http://rubygems.org'

group :development do
  gem 'guard'
  gem 'guard-cucumber'
  gem 'guard-rspec'
end

group :test do
  gem 'rspec-rails', '= 2.5.0'
  gem 'factory_girl', '= 1.3.3'
  gem 'factory_girl_rails', '= 1.0.1'
  gem 'rcov'
  gem 'shoulda'
  gem 'faker'
  if RUBY_VERSION < "1.9"
    gem "ruby-debug"
  else
    gem "ruby-debug19"
  end
end

group :cucumber do
  gem 'cucumber-rails'
  gem 'database_cleaner', '= 0.6.7'
  gem 'nokogiri'
  gem 'capybara', '= 0.4.1.2'
  gem 'factory_girl', '= 1.3.3'
  gem 'factory_girl_rails', '= 1.0.1'
  gem 'faker'
  gem 'launchy'

  if RUBY_VERSION < "1.9"
    gem "ruby-debug"
  else
    gem "ruby-debug19"
  end
end

gem 'spree_core', :path => '/projects/spree_highlighted_products/../spree/core'
gem 'spree_highlighted_products', :path => '/projects/spree_highlighted_products'
gem 'sqlite3-ruby'
