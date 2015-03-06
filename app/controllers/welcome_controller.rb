class WelcomeController < ApplicationController
	def index
		@folders = Folder.all
	end
end
