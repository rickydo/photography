class CategoryController < ApplicationController
	def show
		@category_imgs = Category.find(params[:id]).non_user_category_photos
		@category = Category.find(params[:id])
	end
end
