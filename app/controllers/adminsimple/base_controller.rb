class Adminsimple::BaseController < Adminsimple::ApplicationController

  inherit_resources

  respond_to :html, :js

  append_before_filter :add_crumbs

  helper_method :collection_title, :resource_title, :resource_icon

  def create
    create! do |success, failure|
      failure.js { render 'new', status: 422 }
      success.js { render nothing: true }
    end
  end

  def update
    update! do |success, failure|
      failure.js { render 'edit', status: 422 }
      success.js { render nothing: true }
    end
  end

  def destroy
    destroy! do |format|
      format.js { render nothing: true }
    end
  end

  protected

  def collection
    @_collection ||= end_of_association_chain.paginate(page: params[:page], per_page: 50)
  end

  def collection_title
    t(resource_instance_name.to_s.titleize.pluralize, scope: 'adminsimple.resources', default: resource_instance_name.to_s.titleize.pluralize)
  end

  def resource_title
    t(resource_instance_name.to_s.titleize, scope: 'adminsimple.resources', default: resource_instance_name.to_s.titleize)
  end

  def resource_icon
    ''
  end

  def add_crumbs
    add_crumb(collection_title, collection_path)
  end

end
