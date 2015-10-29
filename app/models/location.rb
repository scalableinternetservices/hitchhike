class Location < ActiveRecord::Base
  #searchkick text_start: [:name], autocomplete: ['name']
  belongs_to :trip
end
