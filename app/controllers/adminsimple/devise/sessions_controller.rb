class Adminsimple::Devise::SessionsController < Devise::SessionsController

  layout 'adminsimple/devise'

  def after_sign_in_path_for(resource)
    resource.class.name == 'Admin' ? adminsimple.root_path : root_path
  end

end
