class HoursController < ApplicationController

  before_action :select_id,only: [:edit, :update, :show, :destory]
  def new
  @hour = Hour.new
  end

   def create 
      @hour=Hour.new hours_paramns
    
      if @hour.save
        redirect_to hours_path
      end
  end

  def edit
  end

  def index
    @hour = Hour.all
  end

  def show
  end

  def update
    @hour.update hours_paramns
    redirect_to hours_path
  end

  def destroy

    @hour.destory
    redirect_to hours_path
  end
  
  private

  def hours_paramns
      params.require(:hour).permit(:quota,:group_id,:student_id)
  end

  def select_id
    @hour =Hour.find params[:id]
  end


end
