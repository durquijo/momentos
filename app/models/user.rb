class User < ActiveRecord::Base
	validates :name, :email, :gender, presence: true
	validates :password, length: {minimum: 6}
	validates :email, presence: true, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
	
end
