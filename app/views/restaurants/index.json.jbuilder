json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :street_number, :street_name, :city, :state, :zip
  json.url restaurant_url(restaurant, format: :json)
end
