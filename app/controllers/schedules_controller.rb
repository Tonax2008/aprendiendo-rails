class SchedulesController < ApplicationController
  def new
  @schedule =Schedule.new
  end

  def create 
      @schedule=Schedule.new schedule_paramns
    
      @schedule.save
      #debugger 
  end



  def edit
  end

  def index
  end

  def show
  end
    private

  def schedule_paramns
      params.require(:schedule).permit(:group_id,:professor_id)
  end
end
