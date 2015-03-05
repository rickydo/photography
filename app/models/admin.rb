class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  has_many :blogs
  has_many :folders, as: :folder_owner
  has_many :photos, as: :photo_owner
  has_many :non_watermarked_photos, through: :photos
  has_many :likes, as: :like_owner
  has_many :comments, as: :comment_owner
end
