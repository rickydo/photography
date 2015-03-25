class Category < ActiveRecord::Base
	extend FriendlyId
	has_many :photos
	friendly_id :name, use: [:slugged, :finders]
end
