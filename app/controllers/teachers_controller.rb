class TeachersController < ApplicationController
  
  def index
    @teacher = Teacher.all
  end
  
  def edit
    @teacher = Teacher.find(params[:id])
  end
  
  def show
    @teacher = Teacher.find(params[:id])
  end

  private
  def teacher_params
    params.require(:teacher).permit( :email, :nick_name, :first_name, :last_name , :first_kana_name, :last_kana_name, :birth_day, :pass_word, :column, :face_image, :subject1_id, :subject2_id, :subject3_id, :subject4_id, :subject5_id, :literature_id, :mathematics_id, :english_id, :science_id, society_ids: [], certificate_images: [])
  end

end

