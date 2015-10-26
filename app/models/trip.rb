class Trip < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :locations, dependent: :destroy
  belongs_to :user
end
