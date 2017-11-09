class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :errors

	def errors(object)
		object.errors.full_messages
	end
end
