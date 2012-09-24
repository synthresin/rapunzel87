class MicropostsController < ApplicationController
	def create
		if signed_in?
			 p = current_user.microposts.build(params[:micropost])
			 p.save
		else
		Micropost.create(params[:micropost])
		end
		
		redirect_to guestbook_path
	end

	def destroy

		Micropost.find(params[:id]).destroy

		redirect_to guestbook_path
		
	end
end
