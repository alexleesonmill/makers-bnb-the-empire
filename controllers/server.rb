
class MakersBnB < Sinatra::Base

  enable :sessions
  set :views, File.expand_path('../../views', __FILE__)

  get '/' do
    "Hello world!"
  end

end
