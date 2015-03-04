class Comment < ActiveRecord::Base
	belongs_to 	:blog
	belongs_to 	:user
	belongs_to	:admin
	belongs_to 	:response, polymorphic: true
	has_many 	:likes, as: :favorite
end
