require_relative '../lib/spaces'

class MakersBnB < Sinatra::Base
  get '/listings' do
    @user = User.find(id: session[:user_id])

    if @user 
      @spaces = Space.retrieve_available
      erb :listings
    else
      flash[:notice] = 'Please log in to view listings'
      redirect('/sessions/new')
    end
  end

  get '/add_space' do
    @user = User.find(id: session[:user_id])

    if @user
      erb(:add_new_property)
    else
      flash[:notice] = 'Please log in to add a space'
      redirect('/sessions/new')
    end
  end

  post '/listings/new' do
    Space.create(name: params[:property_name], description: params[:property_description],
    location: params[:property_location], price: params[:property_price])
    redirect('/listings')
  end
end
