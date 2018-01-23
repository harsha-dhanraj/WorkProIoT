class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_up_path_for(resource)
    vehicles_path # Or :prefix_to_your_route
  end

  def after_sign_in_path_for(resource)
    # vehicles_path # Or :prefix_to_your_route
    patients_path
  end

  def after_sign_out_path_for(resource)    
    new_session_path(:user)    
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:mobile_no])
  end
end
