
class MakersBnB < Sinatra::Base
  enable :sessions
  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    erb(:index)
  end
end
