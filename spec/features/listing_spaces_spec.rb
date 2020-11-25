require_relative '../../controllers/spaces_controller'

feature "displaying spaces on MakersBnB" do

  let(:test_user) { User.create(name: "Jane Doe", email: "jane_doe@gmail.com", password: "12345qwerty") }

  scenario "displays 'Makers BnB Spaces' on /listings route" do
    visit '/listings'
    expect(page).to have_content("MakersBnB Spaces")
  end

  scenario "display the listings list on /listings route" do
    Space.create(description: "A luxurious villa in Beverly Hills", name: "Hidden Gem of Beverly Hills", location: "Los Angeles, Beverly Hills", price: 300, user_id: test_user.id)
    visit '/listings'
    expect(page).to have_content("Hidden Gem of Beverly Hills")
    expect(page).to have_content("A luxurious villa in Beverly Hills")
    expect(page).to have_content("Los Angeles, Beverly Hills")
    expect(page).to have_content("300")
    expect(page).to have_content(test_user.name)
  end
end