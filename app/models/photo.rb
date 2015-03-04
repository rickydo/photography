class Photo < ActiveRecord::Base
	belongs_to 	:admin
	has_one		:non_watermarked_photo
	has_many 	:comments, as: :response
	has_many	:likes, as: :favorite
end
