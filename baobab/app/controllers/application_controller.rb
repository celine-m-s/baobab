class ApplicationController < ActionController::Base

  # Includes Authorization mechanism
  include Pundit
  layout "application"

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  # # Enforces access right checks for individuals resources
  # after_filter :verify_authorized

  # # Enforces access right checks for collections
  # after_filter :verify_policy_scoped, :only => :index

  # Globally rescue Authorization Errors in controller.
  # Returning 403 Forbidden if permission is denied
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    # redirect_to request.headers["Referer"] || root_path
    redirect_to root_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << { organization_attributes: [:name, :organizationslug] }
  end
end
