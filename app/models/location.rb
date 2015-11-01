class Location < ActiveRecord::Base
  #searchkick text_start: [:name], autocomplete: ['name']
  belongs_to :trip

  def self.search(query)
      where("name LIKE ?", "%#{query}%")
  end
end
