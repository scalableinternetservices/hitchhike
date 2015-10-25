class Point < ActiveRecord::Base
  geocoded_by :location
  searchkick text_start: [:location], autocomplete: ['location']
  after_validation :geocode

end
