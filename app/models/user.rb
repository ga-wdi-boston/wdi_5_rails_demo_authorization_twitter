class User < ActiveRecord::Base
	has_many :tweets
	has_many :favorites
	
	has_many :followings
	has_many :friends, through: :followings, source: 'followed'

	attr_accessible :name, :screenname, :description, :email,
					:location, :password, :password_confirmation

	validates :screenname, presence: true, uniqueness: true, length: { minimum: 3 }
	validates :password, confirmation: true, length: { minimum: 6 }
	validates :password_confirmation, presence: true
end