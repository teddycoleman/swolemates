class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.references :workout, foreign_key: true
      t.references :user, foreign_key: true
      t.references :result, foreign_key: true
      t.boolean :accepted

      t.timestamps
    end
  end
end
