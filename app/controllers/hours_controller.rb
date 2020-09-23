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
      params.require(:hour).permit(:quota,:group_id,:student_id)
  end


  def edit
  end

  def index
  end

  def show
  end
end
