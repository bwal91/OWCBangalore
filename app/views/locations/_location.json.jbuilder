json.extract! location, :id, :address, :latitude, :longitude, :title, :description, :email, :website, :contact, :volunteer, :phone, :created_at, :updated_at
json.url location_url(location, format: :json)
