class SchedulesController < ApplicationController

  before_action :select_id, only: [:edit, :update, :show, :destory]
  def new
  @schedule =Schedule.new
  end

  def create 
      @schedule=Schedule.new schedule_paramns
    
      @schedule.save
      #debugger 
      @schedule
  end



  def edit
  end

  def index
    @schedule= Schedule.all
  end

  def show
  end

  def destory
     redirect_to @schedule
  end
    private

  def schedule_paramns
      params.require(:schedule).permit(:group_id,:professor_id,:name)
  end

  def select_id
    @schedule = Schedule.find params[:id ]
  end
end
