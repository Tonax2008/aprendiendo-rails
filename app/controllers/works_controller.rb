class WorksController < ApplicationController

  before_action :select_id,only: [:edit, :update, :show, :destory]
  before_action :authenticate_user!
  def new
  @work = Work.new
  end

  def create 
  
    @work=Work.new work_paramns
    if @work.save
      redirect_to works_path
    else
      puts "ocurrio un error al guardar #{ @work.errors.full_messagess}"
    end
  end


  def edit
  end

  def index
    @work =   Work.all
  end

  def show
  end

  def update
    @work.update work_paramns
    redirect_to works_path

  end

  def destroy
    @work.destroy
    redirect_to works_path
  end
    private

  def work_paramns
      params.require(:work).permit(:task_id,:student_id,:send)
  end

   def select_id
    @work = Work.find params[:id ]
  end
end
