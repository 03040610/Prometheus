class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :nick_name, :first_name, :last_name, :first_kana_name, :last_kana_name, :birth_day, :pass_word, :column, :face_image, :subject1_id, :subject2_id, :subject3_id, :subject4_id, :subject5_id, :literature_id, :mathematics_id, :english_id, :science_id, society_ids: [], certificate_images: []])
  end
end