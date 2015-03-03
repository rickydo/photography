class Blog < ActiveRecord::Base
	belongs_to 	:user
	has_many 	:comments, as: :response
	has_many	:likes, as: :favorite
end
