class Result < ApplicationRecord
  belongs_to :user
  belongs_to :workout
  has_many :challenges
end
