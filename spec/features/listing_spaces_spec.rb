require_relative '../../controllers/spaces_controller'

feature "displaying spaces on MakersBnB" do
  scenario "displays 'Makers BnB Spaces' on /listings route" do
    login_to_dashboard
    click_link('Listings')

    expect(page).to have_content("MakersBnB Spaces")
  end

  scenario "display the listings list on /listings route" do
    Space.create(
      description: "A luxurious villa in Beverly Hills", 
      name: "Hidden Gem of Beverly Hills", 
      location: "Los Angeles, Beverly Hills", 
      price: 300
    )

    login_to_dashboard
    click_link('Listings')

    expect(page).to have_content("Hidden Gem of Beverly Hills")
    expect(page).to have_content("A luxurious villa in Beverly Hills")
    expect(page).to have_content("Los Angeles, Beverly Hills")
    expect(page).to have_content("300")
  end
end