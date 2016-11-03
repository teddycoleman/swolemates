class User < ApplicationRecord
	extend FriendlyId
  friendly_id :name
	has_many :results
	has_many :challenges
end
