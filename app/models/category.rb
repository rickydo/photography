class Category < ActiveRecord::Base
	extend FriendlyId
	has_many :photos
	friendly_id :name, use: [:slugged, :finders]

	# pull out all the photos in a category

	def category_photos
		self.photos.pluck(:image, :clearance)
	end

	# pull out photos non users can view in that category

	def viewable_category_photos(clearance_num)
		images = []
		category_photos.each do |image|
			images << image[0] if image[1] == clearance_num
		end
		images
	end
end


