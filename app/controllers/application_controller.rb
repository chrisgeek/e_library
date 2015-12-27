class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  add_flash_types :successful,:empty_search


	  def after_sign_in_path_for(resource_or_scope)
		new_home_path  	
	  end

	  def after_sign_up_path_for(resource_or_scope)
		new_admin_session_path  	
	  end

	 def after_sign_out_path_for(resource_or_scope)
		new_admin_session_path
	end

end
