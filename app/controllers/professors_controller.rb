class ProfessorsController < ApplicationController
  

  def new
  
  @professor = Professor.new
  end

  def index
    @professor =Professor.all
  end


  def create 
      @professor=Professor.new professor_paramns
    
      @professor.save
      #debugger 
      redirect_to @professor
  end

    private

  def professor_paramns
      params.require(:professor).permit(:matricula,:name,:last_name)
  end

  def show
    @professor = Professor.find params[:id ]
  end

    
end


