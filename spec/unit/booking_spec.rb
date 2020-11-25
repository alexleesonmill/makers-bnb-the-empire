describe Booking do

  let(:test_user) { User.create(name: "Jane Doe", email: "jane_doe@gmail.com", password: "12345qwerty") }
  let(:space) { Space.create(description: "A luxurious villa in Beverly Hills", name: "Hidden Gem of Beverly Hills", location: "Los Angeles, Beverly Hills", price: 300, user_id: test_user.id) }

  context ".create" do
    it 'is called on the Booking class' do
      expect(described_class).to respond_to(:create).with_keywords(:check_in, :booked, :space_id, :user_id)
    end

    it 'creates a new booking' do
      booking = described_class.create(check_in: Date.today.to_s, booked: false, space_id: space.id, user_id: test_user.id)
      expect(booking.check_in).to eq(Date.today.to_s)
      expect(booking.booked).to eq('f') # When executing a SELECT SQL query, the return value for a boolean is either 't' or 'f'
      expect(booking.space_id).to eq(space.id)
      expect(booking.user_id).to eq(test_user.id)
      # Test why the return order matters when running rspec!!! Check w/ different order
    end
  end

  context ".retrieve_booking" do
    it 'is called on the Booking class' do
      expect(described_class).to respond_to(:retrieve_booking)
    end

    it 'retrieves all bookings from the bookings table' do
      described_class.create(check_in: Date.today.to_s, booked: false, space_id: space.id, user_id: test_user.id)
      result = described_class.retrieve_booking
      expect(result.first.check_in).to eq(Date.today.to_s)
      expect(result.first.booked).to eq('f') # When executing a SELECT SQL query, the return value for a boolean is either 't' or 'f'
      expect(result.first.space_id).to eq(space.id)
      expect(result.first.user_id).to eq(test_user.id)
    end
  end
end