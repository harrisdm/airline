json.array!(@bookings) do |booking|
  json.extract! booking, :id, :user_id, :flight_id, :aisle, :seat
  json.url booking_url(booking, format: :json)
end
