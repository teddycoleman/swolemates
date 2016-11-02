class AddOpponentDataToChallenges < ActiveRecord::Migration[5.0]
  def change
  	add_reference :challenges, :opponent, references: :users, index: true
  	add_foreign_key :challenges, :users, column: :opponent_id  	
  	add_reference :challenges, :opponent_results, references: :results, index: true
  	add_foreign_key :challenges, :results, column: :opponent_results_id
  end
end
