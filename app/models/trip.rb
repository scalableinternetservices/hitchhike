class Trip < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :user

  include PublicActivity::Common
  #tracked owner: ->(controller, model) { controller && controller.current_user }

  def average_rating
    ratings.where.not(ratings: {score: nil}).sum(:score) / ratings.where.not(ratings: {score: nil}).size
  end

end
