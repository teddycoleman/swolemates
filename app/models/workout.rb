class Workout < ApplicationRecord
	has_many :results
	has_many :challenges
end
