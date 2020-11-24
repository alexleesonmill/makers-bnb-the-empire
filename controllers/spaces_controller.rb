class MakersBnB < Sinatra::Base

  get '/listings' do
    erb :listings
  end

end
