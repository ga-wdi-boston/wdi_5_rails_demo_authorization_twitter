module ApplicationHelper
	def is_user?
    	@auth.present? #&& !@auth.is_admin
  	end
end
