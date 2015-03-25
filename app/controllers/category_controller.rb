class CategoryController < ApplicationController
	def show
		Category.find(params[:id])
	end
end
