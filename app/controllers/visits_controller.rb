class VisitsController < ApplicationController

	def redirect
		@url = Url.find_by_url_short(params[:url_short])
		@url.visits.create	
		redirect_to @url.url_long
	end
end