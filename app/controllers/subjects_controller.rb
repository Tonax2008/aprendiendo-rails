class SubjectsController < ApplicationController
  before_action :select_id, only: [:edit, :update, :show, :destory]
  def new
  @subject =Subject.new  
  end

  def create 
      @subject=Subject.new subject_paramns
    
      @subject.save
      #debugger 
  end

  def edit
  end

  def index
    @subject = Subject.all
  end

  def show
  end
  
  def destroy
    redirect_to @subject
  end
  

  private
  def subject_paramns
    params.require(:subject).permit(:name,:degree,:level)
  end

  def select_id
    @subject =Subject.find parmas [:id]
  end
  

end
