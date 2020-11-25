class Space

  attr_reader :name, :description, :location, :price, :user_id

  def initialize(name, description, location, price, user_id)
    @name = name
    @description = description
    @location = location
    @price = price
    @user_id = user_id
  end

  def self.create(name:, description:, location:, price:, user_id:)
    DatabaseConnection.query("INSERT INTO spaces (name, description, location, price, user_id)
                              VALUES ('#{name}', '#{description}', '#{location}', #{price}, '#{user_id}');")
    Space.new(name, description, location, price, user_id)
  end

  def self.retrieve_available
    result = DatabaseConnection.query("SELECT * FROM spaces;")
    result.map do |entry|
      Space.new(entry['name'], entry['description'], entry['location'], entry['price'], entry['user_id'])
    end
  end
end