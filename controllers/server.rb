require_relative '../lib/user.rb'

class MakersBnB < Sinatra::Base
  enable :sessions
  set :views, File.expand_path('../../views', __FILE__)
  register Sinatra::Flash

  get '/' do
    @user = User.find(id: session[:user_id])
    erb(:index)
  end
end
