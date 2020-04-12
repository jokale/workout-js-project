class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.integer :athlete_id 
      t.integer :body_part_id

      t.timestamps
    end
  end
end
