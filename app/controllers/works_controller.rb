class WorksController < ApplicationController
  def new
  @works = Work.new
  end

  def create 
      @work=Works.new work_paramns
    
      @work.save
      #debugger 
  end

    private

  def work_paramns
      params.require(:work).permit(:matricula_student,:code_task,:send)
  end

  def edit
  end

  def index
  end

  def show
  end
end
