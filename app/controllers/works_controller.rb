class WorksController < ApplicationController
  def new
  @work = Work.new
  end

  def create 
      @work=Work.new work_paramns
    
      @work.save
      #debugger 
  end

    private

  def work_paramns
      params.require(:work).permit(:task_id,:student_id,:send)
  end

  def edit
  end

  def index
  end

  def show
  end
end
