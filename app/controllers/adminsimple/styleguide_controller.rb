class Adminsimple::StyleguideController < Adminsimple::ApplicationController

  skip_authorization_check

  def show
    redirect_to adminsimple.styleguide_path(:icons)
  end

end
