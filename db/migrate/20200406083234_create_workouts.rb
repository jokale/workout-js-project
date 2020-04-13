class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.references :athlete, foreign_key: true
      t.references :body_part, foreign_key: true
 

      t.timestamps
    end
  end
end
