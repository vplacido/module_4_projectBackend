class ApplicationController < ActionController::API

	def current_user
		# memoization
		if session[:user_id]
				@current_user ||= User.find(session[:user_id])
		else
				@current_user = nil
		end
		return @current_user
end
end
