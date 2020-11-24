feature 'Authentication' do
  scenario 'User can login' do
    user = User.create(name: 'Alex', email: 'alex@alex.com', password: 'Alex123')
    visit '/'
    click_link 'Login'
    fill_in :email, with: 'alex@alex.com'
    fill_in :password, with: 'Alex123'
    click_button 'Login'

    expect(current_path).to eq '/'
    expect(page).to have_content 'Welcome, Alex'
  end
end
