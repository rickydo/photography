class User < ActiveRecord::Base
	has_secure_password
	has_many :blogs
	has_many :photos
	has_many :likes
	has_many :comments
end
