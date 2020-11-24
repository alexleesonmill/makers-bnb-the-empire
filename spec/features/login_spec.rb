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

  scenario 'User gets error message when logging in with wrong email' do
    user = User.create(name: 'Alex', email: 'alex@alex.com', password: 'Alex123')
    visit '/'
    click_link 'Login'
    fill_in :email, with: 'balex@alex.com'
    fill_in :password, with: 'Alex123'
    click_button 'Login'

    expect(current_path).to eq '/sessions/new'
    expect(page).not_to have_content 'Welcome, Alex'
    expect(page).to have_content 'Login details incorrect - please try again'
  end
end
