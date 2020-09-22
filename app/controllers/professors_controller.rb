class ProfessorsController < ApplicationController
  

  def new
  
  @professor = Professor.new
  end

  def index
  end


  def create 
      @professor=Professor.new professor_paramns
      raise
      @professor.save
      debugger 
  end

    private

  def professor_paramns
      params.require(:professor).permit(:matricula,:name,:last_name)
  end

    
end


