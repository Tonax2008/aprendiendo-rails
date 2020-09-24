class WorksController < ApplicationController

  before_action :select_id,only: [:edit, :update, :show, :destory]
  def new
  @work = Work.new
  end

  def create 
  
      @work=Work.new work_paramns
    
      if @work.save
        redirect_to work_path
      else
        puts "ocurrio un error al guardar #{ @work.errors}"
      end
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
