require_relative './lib/database_connection.rb'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup(dbname: 'makers_bnb_test')
else
  DatabaseConnection.setup(dbname: 'makers_bnb')
end