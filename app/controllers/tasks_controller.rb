class TasksController < ApplicationController

  before_action :select_id, only: [:edit, :update, :show, :destory]

  def new
  @task = Task.new
  end

  def create 
      @task=Task.new task_paramns
    
      @task.save
      #debugger 
      redirect_to @task
  end

  def edit
  end

  def index
  @task = Task.all
  end

  def show
  end

  def destroy
    redirect_to @task
  end
  

  private

  def task_paramns
    params.require(:task).permit(:name,:subject_id,:doc)
  end

  def select_id
    @task =Task.find params[:id]
  end
end
