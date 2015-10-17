class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.string :locations
      t.string :tags
      t.datetime :postdate
      t.string :user

      t.timestamps null: false
    end
  end
end
