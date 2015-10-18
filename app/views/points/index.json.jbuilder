json.array!(@points) do |point|
  json.extract! point, :id, :latitude, :longitude, :location
  json.url point_url(point, format: :json)
end
