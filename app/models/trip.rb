class Trip < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :locations, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :user

  def average_rating
    if ratings.size == 0
      0
    else
      ratings.sum(:score) / ratings.size
    end
  end

end
