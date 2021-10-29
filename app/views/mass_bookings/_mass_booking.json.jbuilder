json.extract! mass_booking, :id, :booking_type, :location, :purpose, :duration, :starts_at, :ends_at, :created_at, :updated_at
json.url mass_booking_url(mass_booking, format: :json)
