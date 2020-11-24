require_relative '../lib/spaces'

class MakersBnB < Sinatra::Base

  get '/listings' do
    @spaces = Space.retrieve_available
    erb :listings
  end

  get '/add_space' do
    erb(:add_new_property)
  end

  post '/listings/new' do
    Space.create(name: params[:property_name], description: params[:property_description],
    location: params[:property_location], price: params[:property_price])
    redirect('/listings')
  end

end
