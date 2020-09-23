class ProfessorsController < ApplicationController
  
  before_action :find_professor, only: [:edit, :update, :show, :destroy]

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

  def show
    @professor = Professor.find params[:id ]
  end

  def edit
    @professor = Professor.find params[:id ]
  end

  def update
    #find_professor
    @professor.update professor_paramns
    redirect_to @professor
  end
  
  def destroy
    @professor.destroy
    redirect_to @professor
  end
  private

  def professor_paramns
      params.require(:professor).permit(:area,:name,:last_name)
  end

  def find_professor
    @professor =Professor.find params[:id]
  end
    
end


