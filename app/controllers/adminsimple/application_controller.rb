class Adminsimple::ApplicationController < Adminsimple.configuration.parent_controller.constantize

  protect_from_forgery

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
    return 'adminsimple/pjax' if pjax_request?
    return 'adminsimple/devise' if devise_controller?
    'adminsimple/application'
  end

  def set_pjax_url
    super
    response.headers['X-PJAX-DATA'] = {
      body_class: "#{controller_name}_controller #{action_name}_action"
    }.to_json
  end

  def create_body_class
    @body_class = "#{controller_name}_controller #{action_name}_action"
  end

end
