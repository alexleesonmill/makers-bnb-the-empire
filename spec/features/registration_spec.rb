feature 'registration' do
  scenario 'user visis home and signs up' do
    visit('/')
    click_link('Sign Up')
    fill_in('name', 'Malachi')
    fill_in('email', 'm.spencer@makers.com')
    fill_in('password', 'p20201124')
    click_button('Submit')

    expect(current_path).to eq('/')
    expect(page).to have_content('Welcome, Malachi')
  end
end