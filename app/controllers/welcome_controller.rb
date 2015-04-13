class WelcomeController < ApplicationController
	def index
		@categories = Category.all
		@blogs = Blog.all
	end
end
