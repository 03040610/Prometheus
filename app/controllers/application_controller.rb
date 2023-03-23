class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:nick_name,:first_name,:last_name ,:first_kana_name,:last_kana_name,:birth_day,:pass_word])
  end
end
