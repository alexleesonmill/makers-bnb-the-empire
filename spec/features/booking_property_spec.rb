feature "Booking a property" do

  let(:host) { User.create(name: 'Host', email: 'host@makers.com', password: 'host') }

  scenario 'user requests to book a property on a date' do
    space = Space.create(
        description: "A luxurious villa in Beverly Hills",
        name: "Hidden Gem of Beverly Hills",
        location: "Los Angeles, Beverly Hills",
        price: 300,
        user_id: host.id
    )
    login_to_dashboard
    fill_in('check_in_date', with: '07/17/2019 12:00 AM')
    click_button('Search Properties')
    expect(current_path).to eq('/listings')
    first('.display-spaces').click_button('Request Property')
    expect(page).to have_content("Your booking request for #{space.name} has been sent!")
  end
end