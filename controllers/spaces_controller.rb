require_relative '../lib/spaces'

class MakersBnB < Sinatra::Base

  get '/listings' do
    @spaces = Spaces.retrieve_availables
    erb :listings
  end

end
