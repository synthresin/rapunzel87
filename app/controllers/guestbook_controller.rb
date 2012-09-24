class GuestbookController < ApplicationController
	def index
		@micropost = Micropost.new

		@microposts = Micropost.order("created_at DESC").all
	end
end
