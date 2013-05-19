module ApplicationHelper

	def is_admin
		if @current_user.team_admins.length > 0
			return true
		else
			return false
		end
	end

end
