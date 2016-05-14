class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rater_id
      t.integer :ratee_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
