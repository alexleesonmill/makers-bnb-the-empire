class Space

  attr_reader :name, :description, :location, :price

  def initialize(name, description, location, price)
    @name = name
    @description = description
    @location = location
    @price = price
  end

  def self.create(name:, description:, location:, price:)
    DatabaseConnection.query("INSERT INTO spaces (name, description, location, price)
                              VALUES ('#{name}', '#{description}', '#{location}', #{price});")
    Space.new(name, description, location, price)
  end

  def self.retrieve_available
    result = DatabaseConnection.query("SELECT * FROM spaces;")
    result
  end
end