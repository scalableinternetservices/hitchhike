class Comment < ActiveRecord::Base
  belongs_to :trip
  validates_presence_of :body
end
