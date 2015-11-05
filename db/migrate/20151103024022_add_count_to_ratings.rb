class AddCountToRatings < ActiveRecord::Migration
  def change
    add_column :ratings, :count, :integer, default: 0
  end
end
