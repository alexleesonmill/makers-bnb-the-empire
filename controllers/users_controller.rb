class MakersBnB < Sinatra::Base
  get '/users/new' do
    erb(:sign_up)
  end

  post '/users' do
    user = User.create(
      name: params['name'], 
      email: params['email'], 
      password: params['password']
    )

    #session[:user_id] = user.id
    redirect('/')
  end
end
