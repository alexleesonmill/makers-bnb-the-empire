require_relative '../../lib/spaces'
require_relative '../../lib/user'

describe Space do

  let(:test_user) { User.create(name: "Jane Doe", email: "jane_doe@gmail.com", password: "12345qwerty") }

  context ".create" do
    it "is called on the Space class" do
      expect(described_class).to respond_to(:create).with_keywords(:name, :description, :location, :price, :user_id)
    end

    it "inserts its arguments into the spaces table" do
      result = Space.create(description: "A luxurious villa in Beverly Hills", name: "Hidden Gem of Beverly Hills", location: "Los Angeles, Beverly Hills", price: 300, user_id: test_user.id)
      expect(result).to be_instance_of(described_class)
      expect(result.name).to eq("Hidden Gem of Beverly Hills")
      expect(result.description).to eq("A luxurious villa in Beverly Hills")
      expect(result.location).to eq("Los Angeles, Beverly Hills")
      expect(result.price).to eq(300)
      expect(result.user_id).to eq(test_user.id)
    end
  end

  context ".retrieve_available" do
    it 'is called on the Spaces class' do
      expect(described_class).to respond_to(:retrieve_available)
    end

    it 'returns all listings from within the spaces table in the database' do
      Space.create(description: "A luxurious villa in Beverly Hills", name: "Hidden Gem of Beverly Hills", location: "Los Angeles, Beverly Hills", price: 300, user_id: test_user.id)
      result = described_class.retrieve_available
      expect(result.first.name).to eq("Hidden Gem of Beverly Hills")
      expect(result.first.description).to eq("A luxurious villa in Beverly Hills")
      expect(result.first.location).to eq("Los Angeles, Beverly Hills")
      expect(result.first.price).to eq("300")
      expect(result.first.user_id).to eq(test_user.id)
    end
  end
end