class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :trip, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.float :score, default: 0

      t.timestamps null: false
    end
  end
end
