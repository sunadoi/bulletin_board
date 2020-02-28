class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def ensure_login
    unless user_signed_in?
      redirect_to new_user_session_path, flash: {error: '投稿するためにはログインが必要です'}
    end
  end
end
