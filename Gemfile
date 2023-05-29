source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 7.0.5"

# Drivers
gem "pg", "~> 1.5.3"

gem "puma", "~> 5.6.5"

# HTTP client
gem "faraday"

# Assets
gem "importmap-rails", "~> 1.1.6"
gem "jbuilder", "~> 2.11.5"
gem "sprockets-rails", "~> 3.4.2"
gem "tailwindcss-rails", "~> 2.0.29"

# Space and Time
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Other
gem "bootsnap", require: false

group :development, :test do
  gem "debug"
  gem "dotenv-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "foreman"
  gem "pry"
  gem "spring"
  gem "spring-commands-rspec"

  # Code critics
  gem "benchmark-ips", require: false
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false

  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, git: "https://github.com/rspec/#{lib}.git", branch: "main"
  end
end

group :test do
  gem "database_cleaner-active_record"
  gem "shoulda-matchers"
  gem "webmock"
  gem "vcr"
end
