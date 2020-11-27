require_relative '../lib/user.rb'

class MakersBnB < Sinatra::Base
  enable :sessions, :method_override
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  register Sinatra::Flash

  get '/' do
    @user = User.find(id: session[:user_id])

    if @user
      redirect '/dashboard'
    else
      erb(:index)
    end
  end

  get  '/dashboard' do
    @user = User.find(id: session[:user_id])
    erb(:dashboard)
  end
end
