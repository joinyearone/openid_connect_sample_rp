source 'http://rubygems.org'

gem 'rails', '~>3.2'
gem 'jquery-rails'
gem 'openid_connect'
gem 'html5_validators'
gem 'squeel'
gem 'rest-client'

group :development, :test do
  gem 'sqlite3', '~> 1.3.5'
  gem 'test-unit', '~> 3.0'
  gem 'pry-byebug'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'turn', :require => false
end

group :production do
  # gem 'pg'
  gem 'rack-ssl', :require => 'rack/ssl'
end
