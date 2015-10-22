class Trip < ActiveRecord::Base
  searchkick text_start: [:title], autocomplete: ['title']
  has_many :comments
end
