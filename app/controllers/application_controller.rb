class ApplicationController < ActionController::Base
  protect_from_forgery

  # returns the user currently logged in to the shopping cart.
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
	
end
