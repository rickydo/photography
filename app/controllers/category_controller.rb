class CategoryController < ApplicationController
	def show
		@category_imgs = Category.find(params[:id]).viewable_category_photos
	end
end
