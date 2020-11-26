class MakersBnB < Sinatra::Base
  get '/request_confirmation/:id' do
    Booking.create(
              check_in: session[:check_in_date],
              booked: false,
              space_id: params[:id],
              user_id: session[:user_id]
          )

    erb(:request_confirmation)
  end

  get '/requests' do
    @requests_made = Booking.retrieve_requests_made(user_id: session[:user_id])
    @requests_received = Booking.retrieve_requests_received(host_id: session[:user_id])
    erb :requests
  end
end
