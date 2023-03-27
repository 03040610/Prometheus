class TeachersController < ApplicationController
  
  def index
  end

  private
  def teacher_params
    params.require(:teacher).permit( :email, :nick_name, :first_name, :last_name , :first_kana_name, :last_kana_name, :birth_day, :pass_word, :column, :image, :subject1_id, :subject2_id, :subject3_id, :subject4_id, :subject5_id, :literature_id, :mathematics_id, :english_id, :science_id, :society_id)
  end
end

