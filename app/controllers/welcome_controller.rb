class WelcomeController < ApplicationController
	def index
		if current_user === nil
			root_path
		end
	end
end
