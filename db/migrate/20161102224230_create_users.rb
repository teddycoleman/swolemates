class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :gender
      t.integer :age
      t.string :fav_food
      t.string :fav_workout

      t.timestamps
    end
  end
end
