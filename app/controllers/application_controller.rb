class ApplicationController < ActionController::Base
	include LoadAndAuthorizeResource
	
	protect_from_forgery with: :exception

	before_action :authenticate_user!
	helper_method :mailbox, :conversation
	
	before_action :configure_permitted_parameters, if: :devise_controller?
	
	before_action :detect_device_variant


	def after_sign_in_path_for(resource)
	    :root
	end
	
	private


  	def mailbox
  		@mailbox ||= current_user.mailbox
  	end

  	def conversation
    	@conversation ||= mailbox.conversations.find(params[:id])
  	end

  	def detect_device_variant
    	request.variant = :phone if browser.device.mobile?
  	end

	protected


	def configure_permitted_parameters
		update_attrs = [:password, :password_confirmation, :current_password]
		added_attrs = [:email, :password, :password_confirmation, :remember_me]
		devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
		devise_parameter_sanitizer.permit(:account_update, keys: update_attrs)
	end
end
