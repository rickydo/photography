class Category < ActiveRecord::Base
	extend FriendlyId
	has_many :photos
	friendly_id :name, use: [:slugged, :finders]

	# pull out all the photos in a category

	def category_photos
		self.photos.pluck(:image, :clearance, :marked_image)
	end

	# pull out photos non users can view in that category

	def viewable_category_photos
		images = []
		category_photos.each do |image|
			if image[1] <= 0
				images << image[0] 
				images << image[2]
			end
		end
		images
	end

	

end

