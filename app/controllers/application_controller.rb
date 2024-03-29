class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def set_locale
    I18n.locale = I18n.default_locale
  end
  
  protected

  def configure_permitted_parameters
    attributes = [:name, :surname,:username, :email, :avatar]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
