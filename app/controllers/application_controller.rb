class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_admin!

  protected

  # def after_sign_in_path_for(admin)
  #   # return the path based on resource
  #   id = current_admins.id
  #   # get 'patients/'
  # end

  def after_sign_up_path_for(admins)
    id = current_admins.id
    get 'admins/:id/edit'
  end
end
