class Bnb < Sinatra::Base

  get '/profile/requests' do
    erb :'profile/requests'
  end

  post '/profile/requests/confirm' do
    puts params[:booking_id]
    booking = Booking.first(id: params[:booking_id])
    booking.update(:confirmed => true)
    redirect '/profile/requests'
  end

end
