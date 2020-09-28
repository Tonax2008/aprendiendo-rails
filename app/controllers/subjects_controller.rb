class SubjectsController < ApplicationController
  before_action :select_id, only: [:edit, :update, :show, :destory]
  def new
  @subject =Subject.new  
  end

  def create 
      @subject=Subject.new subject_paramns
    
      if @subject.save
        redirect_to subjects_path
      end
      
  end

  def edit
  end

  def index
    @subject = Subject.all
    #@subject_room = Subject.all.pluck.group(:room)
  end

  def show
  end

  def update
    @subject.update subject_paramns
    redirect_to subjects_path
  end
  
  def destroy
    @subject.destroy
    redirect_to subjects_path
  end
  

  private
  def subject_paramns
    params.require(:subject).permit(:name,:degree,:level)
  end

  def select_id
    @subject =Subject.find parmas [:id]
  end
  

end
