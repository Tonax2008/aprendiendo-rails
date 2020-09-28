class SchedulesController < ApplicationController

  before_action :select_id, only: [:edit, :update, :show, :destory]
  def new
  @schedule =Schedule.new
  end

  def create 
      @schedule=Schedule.new schedule_paramns
    
      if @schedule.save 
      @schedule
      else 
        puts 'HUbo un error al guardar'
      end
  end



  def edit
  end

  def index
    @schedule= Schedule.all
  end

  def show
  end 

  def update
    @schedule.update schedule_paramns
    redirect_to schedule_path
  end

  def destory
    @schedule.destory
    redirect_to schedule_path
  end
    private

  def schedule_paramns
      params.require(:schedule).permit(:group_id,:professor_id,:name)
  end

  def select_id
    @schedule = Schedule.find params[:id ]
  end
end
