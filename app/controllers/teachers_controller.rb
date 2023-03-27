class TeachersController < ApplicationController
  
  def index
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to edit_teacher_registration 
    else
      render :new
    end
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation, :nick_name, :first_name, :last_name, :first_kana_name, :last_kana_name, :birth_day, :image)
  end
end

