class User < ApplicationRecord
	has_many :results
	has_many :challenges
	has_secure_password

	def self.confirm (email, password)
		user = User.find_by(email: email)
		user.authenticate(password)
	end
end
