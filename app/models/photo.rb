class Photo < ActiveRecord::Base
	belongs_to 	:photo_owner, polymorphic: true
	belongs_to	:folder
	belongs_to  :category
	has_one		:non_watermarked_photo
	has_many 	:comments, as: :response
	has_many	:likes, as: :favorite
end
