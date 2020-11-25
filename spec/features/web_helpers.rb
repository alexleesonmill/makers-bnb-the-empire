def login_to_dashboard
  User.create(name: 'Malachi', email: 'm.spencer@makers.com', password: '2020')
  visit('/')
  click_link('Login')
  fill_in('email', with: 'm.spencer@makers.com')
  fill_in('password', with: '2020')
  click_button('Login')
end