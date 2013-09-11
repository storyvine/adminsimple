class Adminsimple::StyleguideController < Adminsimple::ApplicationController

  add_crumb "Styleguide"

  def show
    if params[:view]
      render params[:view]
    else
      redirect_to adminsimple.styleguide_path(:icons)
    end
  end

end
