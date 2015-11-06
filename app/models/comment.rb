class Comment < ActiveRecord::Base
  include PublicActivity::Common

  belongs_to :trip
  validates_presence_of :body
end
