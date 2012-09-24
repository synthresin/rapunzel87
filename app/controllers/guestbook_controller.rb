class GuestbookController < ApplicationController
	def index
		
		if signed_in?
			@micropost = current_user.microposts.build
		else
			@micropost = Micropost.new
		end

		@microposts = Microposts.all
		
	end
end
