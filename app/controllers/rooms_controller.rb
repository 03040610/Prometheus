class RoomsController < ApplicationController

  def new
    @rooms = Room.all
    @teacher = Teacher.all
  end
  
end
