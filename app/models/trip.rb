class Trip < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :user

  def average_rating
    ratings.where.not(ratings: {score: nil}).sum(:score) / ratings.where.not(ratings: {score: nil}).size
  end

end
