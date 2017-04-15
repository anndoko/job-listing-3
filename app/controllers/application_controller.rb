class ApplicationController < ActionController::Base
    def require_is_admin
      if !current_user.admin?
        flash[:alert] = "You are not an admin."
        redirect_to jobs_path
      end
    end
end
