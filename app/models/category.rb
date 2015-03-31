class Category < ActiveRecord::Base
	extend FriendlyId
	has_many :photos
	friendly_id :name, use: [:slugged, :finders]

	# pull out all the photos in a category

	def category_photos
		self.photos.pluck(:image, :clearance)
	end

	# pull out photos non users can view in that category

	def non_user_category_photos
		images = []
		category_photos.each do |image|
			images << image[0] if image[1] == 0
		end
		images
	end

	# pull out photos users can view with low clearance 

	def low_user_category_photos
		images = []
		category_photos.each do |image|
			images << image[0] if image[1] <= 1
		end
		images
	end
end


