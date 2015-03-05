class Like < ActiveRecord::Base
	belongs_to :like_owner, polymorphic: true
	belongs_to :favorite, polymorphic: true
end
