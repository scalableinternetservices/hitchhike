class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :trip, index: true, foreign_key: true
      t.text :lat
      t.text :lng
      t.text :name

      t.timestamps null: false
    end
  end
end
