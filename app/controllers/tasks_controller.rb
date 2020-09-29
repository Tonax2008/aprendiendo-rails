class TasksController < ApplicationController

  before_action :select_id, only: [:edit, :update, :show, :destory] 
  before_action :user_validation!

  def new
  @task = Task.new
  @task_name=Task.new
   

  end

  def create 
    @task=Task.new task_paramns
  
    if @task.save
    redirect_to tasks_path
    else
      puts "error al guardar  #{@task.errors.full_messages}"
    end
  end

  def edit
  end

  def index
  
  @task = Task.all
  @task_name= Task.all.collect(&:subject)
  puts @task_name
  end

  def show
  end

  def update
    @task.update task_paramns
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    puts 'Se elimino correctamente'
    redirect_to tasks_path
    
  end

  

  private

  def task_paramns
    params.require(:task).permit(:name,:subject_id,:doc)
  end

  def select_id
    @task =Task.find params[:id]
  end
end
