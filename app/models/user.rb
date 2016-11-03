class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add attribute, (options[:message] || "is not an email") unless
      value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  end
end

class User < ApplicationRecord
	has_many :results
	has_many :challenges
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	has_secure_password
	validates :email, uniqueness: true, email: true, presence: true
	validates :password, length: { minimum: 6 }
	validates :first_name, :last_name, :gender, :age, :location, presence: true


	def self.confirm (email, password)
		user = User.find_by(email: email)
		user.authenticate(password)
	end
end
