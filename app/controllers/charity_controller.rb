class CharityController < ApplicationController


	def create 
		@location = Charity.new(params[:location])
		if @location.save
			redirect_to :back, :notice => "Location successfully created"
		else
			redirect_to :back, :notice => "Error: Locaiton not created"
		end
	end

	

end