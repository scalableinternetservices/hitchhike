class Trip < ActiveRecord::Base
  searchkick autocomplete: ['title']
  has_many :comments
end
