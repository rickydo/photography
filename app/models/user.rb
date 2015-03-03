class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
  	# :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

	has_secure_password
	has_many :blogs
	has_many :photos
	has_many :likes
	has_many :comments

	validates :first_name, presence: true, length: { in: 2..20}
	validates :last_name, presence: true, length: { in: 2..20}
	validates :email, uniqueness: true, presence: true, email: true
	validates_datetime :dob
	validates_password_strength :password
end
