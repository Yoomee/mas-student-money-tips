source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.15'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

github_auth = "ec328b2267bdb5056f966233dc2a43a1beb60e7c:x-oauth-basic"
gem 'student_money_tips', :git => "https://#{github_auth}@github.com/moneyadviceservice/student_money_tips.git"
# gem 'student_money_tips', :path => '../student_money_tips'

gem 'mas-build', :git => "https://#{github_auth}@github.com/moneyadviceservice/mas-build.git"
gem 'mas-assets', :git => "https://#{github_auth}@github.com/moneyadviceservice/mas-assets.git"

gem 'newrelic_rpm'
gem 'haml'
gem 'thin'

group :production do
  gem 'pg'
end

group :development do
  gem 'sqlite3'
  gem 'debugger'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.1.2'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
