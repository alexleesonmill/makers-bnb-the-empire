class MakersBnB < Sinatra::Base
  get '/users/new' do
    erb(:sign_up)
  end

  post '/users' do
    redirect('/')
  end
end
