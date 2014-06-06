class Adminsimple::ApplicationController < Adminsimple.configuration.parent_controller.constantize

  protect_from_forgery with: :exception

  layout :layout

  before_filter :authenticate!, :create_body_class

  protected

  def authenticate!
    authenticate_admin_user!
  end

  def current_user
    current_admin_user
  end

  def layout
    return 'adminsimple/modal' if request.xhr?
    return 'adminsimple/devise' if devise_controller?
    'adminsimple/application'
  end

  def create_body_class
    @body_class = "#{controller_name}_controller #{action_name}_action"
  end

end
