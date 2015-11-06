class RemoveUnusedColumns < ActiveRecord::Migration
  def change
    remove_column :trips, :locations
    remove_column :trips, :user
    remove_column :ratings, :count
  end
end
