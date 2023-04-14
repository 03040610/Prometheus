class TeachersController < ApplicationController
  
  def index
    if teacher_signed_in? && teacher.update(teacher_params)
      @teacher = Teacher.all
    else
      teacher = Teacher.find_by_id(params[:id])
      teacher.destroy 
      @teacher = Teacher.all
    end
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


class Teachers::RegistrationsController < Devise::RegistrationsController
  before_action :set_teacher, only: [:edit, :update]

  def new
    super
  end

  def create
    super
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to root_path
    else
      @teacher.destroy if @teacher.email.nil? || @teacher.nick_name.nil? || @teacher.first_name.nil? || @teacher.last_name.nil? || @teacher.birth_day.nil? || @teacher.column.nil?
      render :edit
    end
  end

  private

  def set_teacher
    @teacher = current_teacher
  end

  def teacher_params
    params.require(:teacher).permit(:email, :nick_name, :first_name, :last_name , :first_kana_name, :last_kana_name, :birth_day, :password, :password_confirmation, :column, :face_image, :subject1_id, :subject2_id, :subject3_id, :subject4_id, :subject5_id, :literature_id, :mathematics_id, :english_id, :science_id, society_ids: [], certificate_images: [])
  end

  def after_sign_up_path_for(resource)
    edit_teacher_registration_path
  end
end
