class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_filter :require_login

	def current_user
		@current_user = User.find(75)
		# @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
		helper_method :current_user
		

	def authorize
		redirect_to '/' unless current_user
	end

	private

	def require_login
		unless current_user
			flash[:notice] = "You must be logged in to continue!"
			redirect_to '/'
	end
  end
end
