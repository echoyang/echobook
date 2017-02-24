class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
      if !current_user.admin?
          redirect_to "/", flash[:alert] = "不要随便来看人家的后台的啦!"
      end
  end
end
