class GroupsController < ApplicationController

  before_action :select_id, only: [:edit, :update, :show, :destory]
  def new
  @group = Group.new
  end 

  def create 
    @group=Group.new group_paramns
    
    #raise
    @group.save
    redirect_to @group
    
  end

  def show 
    @group = Group.find params[:id]
  end

  def index
    @group =Group.all
  end

  def destroy
    redirect_to @group
  end
  


  private

  def group_paramns
    params.require(:group).permit(:room,:subject_id)
  end

  def select_id
    @group = Group.find params[:id]
  end
  

  
end
