class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
  	#  :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable, 
        :confirmable, :lockable

	has_many :likes, as: :like_owner
	has_many :comments, as: :comment_owner
	has_many :folder, as: :folder_owner
	has_many :photos, as: :photo_owner
	has_many :non_watermarked_photos, through: :photos


	validates :first_name, presence: true, length: { in: 2..20}
	validates :last_name, presence: true, length: { in: 2..20}
	validates :email, uniqueness: true, presence: true, email: true
	validates_password_strength :password
end
