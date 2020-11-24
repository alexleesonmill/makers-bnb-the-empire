require_relative '../../lib/spaces'

describe Spaces do
  context ".create" do
    it "is called on the Spaces class" do
      expect(described_class).to respond_to(:create).with_keywords(:name, :description, :location, :price)
    end

    it "inserts its arguments into the spaces table" do
      result = Spaces.create(description: "A luxurious villa in Beverly Hills", name: "Hidden Gem of Beverly Hills", location: "Los Angeles, Beverly Hills", price: 300)
      expect(result).to be_instance_of(described_class)
      expect(result.name).to eq("Hidden Gem of Beverly Hills")
      expect(result.description).to eq("A luxurious villa in Beverly Hills")
      expect(result.location).to eq("Los Angeles, Beverly Hills")
      expect(result.price).to eq(300)
    end
  end
end