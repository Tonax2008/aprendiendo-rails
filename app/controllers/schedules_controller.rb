class SchedulesController < ApplicationController
  def new
  @schedule =Schedule.new
  end

  def create 
      @schedule=Schedule.new schedule_paramns
    
      @schedule.save
      #debugger 
  end

    private

  def schedule_paramns
      params.require(:schedule).permit(:code_schedule,:code_group,:matricula_professor)
  end


  def edit
  end

  def index
  end

  def show
  end
end
