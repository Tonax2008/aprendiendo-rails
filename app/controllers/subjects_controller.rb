class SubjectsController < ApplicationController
  def new
  @subject =Subject.new  
  end

  def create 
      @subject=Subject.new subject_paramns
    
      @subject.save
      #debugger 
  end

    private

  def subject_paramns
      params.require(:subject).permit(:name,:degree,:level)
  end

  

  def edit
  end

  def index
  end

  def show
  end
end
