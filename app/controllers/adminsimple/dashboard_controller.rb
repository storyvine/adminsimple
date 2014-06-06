class Adminsimple::DashboardController < Adminsimple::ApplicationController

  add_crumb "Admin"

  def index
  end

  private

  def authenticate!
    unless current_user
      redirect_to new_session_path(:admin)
      return
    end
    authenticate_admin_user!
  end

end
