class User < ApplicationRecord
	
	validates_presence_of :email, :full_name, :location, :password
	validates_confirmation_of :password
	validates_length_of :bio, minimum: 10, allow_blank: false
	# validates :email, presence: true
	# validates_presence_of :email
end
