class Category < ActiveRecord::Base
	extend FriendlyId
	has_many :photos
	friendly_id :name, use: [:slugged, :finders]

	# pull out photos non users can view in that category

	def non_user_category_photos
		self.photos.where("clearance = 0").pluck(:image, :marked_image)
	end

	# def print
	# 	non_user_category_photos.each do |img1, img2|
	# 		# puts img1
	# 		puts img2 
	# 	end
	# end



end

