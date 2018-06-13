class Adminsimple::DashboardController < Adminsimple::ApplicationController

  def index
  end

  private

  def authenticate!
    unless current_user
      redirect_to new_session_path(Adminsimple.configuration.admin_model)
      return
    end
    self.send("authenticate_#{Adminsimple.configuration.admin_model}!")
  end

end
