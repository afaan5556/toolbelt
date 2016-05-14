class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.integer :flagger_id
      t.integer :flagee_id
      t.integer :reason
      t.string :comment

      t.timestamps null: false
    end
  end
end
