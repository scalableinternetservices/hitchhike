json.array!(@trips) do |trip|
  json.extract! trip, :id, :title, :description, :locations, :tags, :postdate, :user
  json.url trip_url(trip, format: :json)
end
