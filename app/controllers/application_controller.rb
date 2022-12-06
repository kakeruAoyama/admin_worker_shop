class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      shops_path
    when Worker
      worker_path(current_worker)
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :shop_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :shop_id])
  end
end
