require_relative 'database_connection'

class Spaces

  attr_reader :name, :description, :location, :price

  def initialize(name, description, location, price)
    @name = name
    @description = description
    @location = location
    @price = price
  end

  def self.create(name:, description:, location:, price:)
    DatabaseConnection.setup("makers_bnb")
    DatabaseConnection.setup("makers_bnb_test") if ENV['ENVIRONMENT'] == 'test'
    DatabaseConnection.query(sql: "INSERT INTO spaces (name, description, location, price)
                              VALUES ('#{name}', '#{description}', '#{location}', #{price});")
    Spaces.new(name, description, location, price)
  end

  def self.retrieve_availables
    DatabaseConnection.setup("makers_bnb")
    DatabaseConnection.setup("makers_bnb_test") if ENV['ENVIRONMENT'] == 'test'
    result = DatabaseConnection.query(sql: "SELECT * FROM spaces;")
    result
  end
end