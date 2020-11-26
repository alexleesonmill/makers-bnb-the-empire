class MakersBnB < Sinatra::Base
  post '/requests/:id' do
    p params
    p params[:id]
    space = Space.find_by_id(id: params[:id])
    p session
    Booking.create(
        check_in: session[:check_in_date],
        booked: false,
        space_id: space.id.to_i,
        user_id: session[:user_id]
    )
    redirect("/request_confirmation/:#{params[:space_id]}")
  end
  get '/request_confirmation/:space_id' do
    @space = Space.find_by_id(id: params[:space_id])
    erb(:request_confirmation)
  end
end
