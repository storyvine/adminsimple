class Adminsimple::Devise::SessionsController < Devise::SessionsController

  #skip_authorization_check only: [:new, :create, :destroy]

  layout 'adminsimple/devise'

end
