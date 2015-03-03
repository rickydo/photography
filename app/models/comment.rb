class Comment < ActiveRecord::Base
	belongs_to 	:blog
	belongs_to 	:response, polymorphic: true
	has_many 	:likes, as: :favorite
end
