class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.integer :user_id
      t.string :title
      t.boolean :available, default: true
      t.string :description

      t.timestamps null: false
    end
  end
end
