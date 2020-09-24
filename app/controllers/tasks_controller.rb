class TasksController < ApplicationController

  before_action :select_id, only: [:edit, :update, :show, :destory]

  def new
  @task = Task.new
  end

  def create 
    @task=Task.new task_paramns
  
    if @task.save
    redirect_to task_path
    else
      puts "error al guardar  #{@task.errors}"
    end
  end

  def edit
  end

  def index
  @task = Task.all
  end

  def show
  end

  def destroy
    if @task.destory
      puts 'Se elimino correctamente'
      redirect_to @task
    end
  end
  

  private

  def task_paramns
    params.require(:task).permit(:name,:subject_id,:doc)
  end

  def select_id
    @task =Task.find params[:id]
  end
end
