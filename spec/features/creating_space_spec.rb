feature "creating a space" do
  scenario "users can click a link from the dashboard to access the 'add space' form" do
    User.create(name: 'Malachi', email: 'm.spencer@makers.com', password: '2020')

    visit('/')
    click_link('Login')
    fill_in('email', with: 'm.spencer@makers.com')
    fill_in('password', with: '2020')
    click_button('Login')
    click_link('List Property')

    expect(current_path).to eq('/add_space')
    expect(page).to have_content 'List your property on MakersBnB'
  end

  scenario "users can enter basic details of their property into the 'add space' form" do
    visit('/add_space')
    fill_in 'property_name', with: 'Hidden Gem of Beverly Hills'
    fill_in 'property_description', with: 'A luxurious villa in Beverly Hills'
    fill_in 'property_location', with: 'Los Angeles, Beverly Hills'
    fill_in 'property_price', with: '300'
    click_button 'Post'

    expect(page).to have_content("Hidden Gem of Beverly Hills")
    expect(page).to have_content("A luxurious villa in Beverly Hills")
    expect(page).to have_content("Los Angeles, Beverly Hills")
    expect(page).to have_content(300)
  end
end
