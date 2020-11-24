require_relative '../../controllers/spaces_controller'

feature "Creates a new Space for a user" do

  scenario "users can click a link from the homepage to access the 'add space' form" do
    visit('/')
    expect(page).to have_link 'List your property'
    click_link 'List your property'
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
