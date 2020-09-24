class WorksController < ApplicationController

  before_action :select_id,only: [:edit, :update, :show, :destory]
  def new
  @work = Work.new
  end

  def create 
  
      @work=Work.new work_paramns
    
      @work.save
      #debugger 
  end


  def edit
  end

  def index
    @work =   Work.all
  end

  def show
  end

  def destroy
    redirect_to @work
  end
    private

  def work_paramns
      params.require(:work).permit(:task_id,:student_id,:send)
  end

   def select_id
    @work = Work.find params[:id ]
  end
end
