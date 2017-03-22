class AhoyController < ApplicationController

def index
	@visits = Visit.all
	render :layout => false
end




end