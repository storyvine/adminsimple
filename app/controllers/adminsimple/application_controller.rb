class Adminsimple::ApplicationController < Adminsimple.configuration.parent_controller.constantize

  protect_from_forgery
  add_crumb "Home", "/"

  layout :layout

  before_filter :authenticate!, :create_body_class

  private

  def authenticate!
    self.send("authenticate_#{Adminsimple.configuration.devise_model}!")
  end

  def current_user
    self.send("current_#{Adminsimple.configuration.devise_model}")
  end

  def layout
    return 'adminsimple/devise' if devise_controller?
    'adminsimple/application'
  end

  def create_body_class
    @body_class = "#{controller_name}_controller #{action_name}_action"
  end

end
