class HoursController < ApplicationController
  def new
  @hour = Hour.new
  end

   def create 
      @hour=Hour.new hours_paramns
    
      @hour.save
      #debugger 
  end

    private

  def hours_paramns
      params.require(:hours).permit(:code_group_id,:matricula_student_id,:quota)
  end


  def edit
  end

  def index
  end

  def show
  end
end
