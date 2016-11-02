class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :workout, foreign_key: true
      t.integer :qty
      t.string :unit

      t.timestamps
    end
  end
end
