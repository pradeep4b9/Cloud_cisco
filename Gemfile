source 'https://rubygems.org'
gem 'rails', '4.1.5'
gem 'puma'

gem 'therubyracer', :platform=>:ruby

gem 'sqlite3'

#for active record
gem 'activerecord'

#Database
gem 'mongoid', '~> 4.0.0'
gem 'bson_ext'
gem 'mongoid_slug', '~> 3.2.1'

# debug
gem 'byebug'
gem 'interact-rails'

#User Auth
gem 'devise'
gem 'devise-async', '~> 0.9.0'

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'figaro', '>= 1.0.0.rc1'
gem 'haml-rails'
gem 'simple_form'
gem 'carrierwave_direct'

gem "geocoder"
gem 'countries', :require => 'countries/global'
gem 'bcrypt-ruby', :platform => "ruby"

#creating unique registration id for profile
gem 'mongoid_token', github: 'apai4/mongoid_token'

#datepicker
gem 'bootstrap-sass', '3.2.0.2'
gem 'bootstrap-datepicker-rails'
gem "mini_magick"

gem "bson"
gem "moped", github: "mongoid/moped"
#Upload Photos
# install dependency on ubuntu > sudo apt-get install imagemagick libmagickwand-dev
# gem "rmagick", "~> 2.13.2"
gem 'rmagick'
gem "carrierwave-mongoid" #, "~> 0.5.0", :require => 'carrierwave/mongoid'
gem "carrierwave_backgrounder" #, "~> 0.2.1"
gem 'fog', '~> 1.36.0'
gem "rack-raw-upload" #, "~> 1.1.1"
#gem for file encryption and decryption
gem "carrierwave_encrypter_decrypter", "~> 0.0.6"


# Background Job
gem 'redis-namespace'
gem 'sidekiq'
gem 'sidekiq-scheduler', '~> 1.0'

gem 'net-ssh'
gem "rest-client", "~> 1.6.7"

group :development do
  gem 'capistrano', '~> 3.4.0'
  # cap tasks to manage puma application server
  gem 'capistrano3-puma', require: false
  gem 'capistrano-rails',   '~> 1.1', require: false
  gem 'capistrano-bundler', '~> 1.1', require: false
  gem 'capistrano-rvm',   '~> 0.1', require: false
  gem 'capistrano-sidekiq'

  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring'

end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end


group :production do
  # gem 'unicorn'
  # gem 'unicorn-rails'
  # gem 'puma'
end

#pagination
gem 'kaminari'