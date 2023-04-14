class RoomsController < ApplicationController
  def new
    @room = Room.new
    @teachers = Teacher.all
  end

  def create 
  end
  
end
