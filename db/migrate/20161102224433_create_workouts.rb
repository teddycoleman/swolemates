class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :description
      t.integer :qty
      t.string :unit
      t.string :unit_of_competition

      t.timestamps
    end
  end
end
