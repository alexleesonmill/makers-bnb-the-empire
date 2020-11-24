ENV['ENVIRONMENT'] = 'test'

require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'pg'
require_relative '../controllers/app.rb'
require_relative './setup_test_database.rb'
require_relative '../lib/database_connection.rb'

Capybara.app = MakersBnB

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])

SimpleCov.start

RSpec.configure do |config|
  config.before(:each) do
    setup_test_database
  end
end