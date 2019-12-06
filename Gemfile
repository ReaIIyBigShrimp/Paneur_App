source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'sprockets', '~> 3.7', '>= 3.7.1'
gem 'sprockets-rails'
gem 'popper_js'
gem 'railties'
gem "autoprefixer-rails"

# gem 'bootstrap', '~> 4.0'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3'
gem 'simple-line-icons-rails', '~> 0.1.3'
gem 'owlcarousel-rails', '~> 2.0'
gem 'magnific-popup-rails', '~> 1.1'

# jquery appear - No gem
# gem 'jquery-easing-rails', '~> 0.0.2'
# gem 'jquery-cookie-rails', '~> 1.3', '>= 1.3.1.1'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'jquery-ui-rails', '~> 5.0', '>= 5.0.5'
gem 'jquery-validation-rails', '~> 1.16'
# gem 'stellar-js-rails', '~> 0.6.2.1'
# gem 'lazyload-rails', '~> 0.3.1'
# gem 'isotope-rails', '~> 2.2', '>= 2.2.2'
gem 'easy_as_pie', '~> 0.1.2'
# gem 'vibe', '~> 1.0'

gem 'rmre'

gem 'seed_dump'

gem 'composite_primary_keys', '~> 10'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end
# Dev only
group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
