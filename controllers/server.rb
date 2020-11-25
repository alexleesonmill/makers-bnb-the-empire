require_relative '../lib/user.rb'

class MakersBnB < Sinatra::Base
  enable :sessions
  set :views, File.expand_path('../../views', __FILE__)
  set :public, File.expand_path('../../public', __FILE__)
  register Sinatra::Flash

  get '/' do
    erb(:index)
  end

  get  '/dashboard' do
    @user = User.find(id: session[:user_id])
    erb(:dashboard)
  end
end
