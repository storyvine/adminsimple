class Adminsimple::StyleguideController < Adminsimple::ApplicationController

  def show
    if params[:view]
      render params[:view]
    else
      redirect_to adminsimple.styleguide_path(:icons)
    end
  end

end
