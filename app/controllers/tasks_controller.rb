class TasksController < ApplicationController

  def new
  @task = Task.new
  end

  def create 
      @task=Task.new task_paramns
    
      @task.save
      #debugger 
  end

    private

  def task_paramns
      params.require(:task).permit(:code_task,:code_subject_id)
  end


  def edit
  end

  def index
  end

  def show
  end
end
