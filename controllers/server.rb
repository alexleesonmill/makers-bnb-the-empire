
class MakersBnB < Sinatra::Base

  enable :sessions

  get '/' do
    "Hello world!"
  end

end
