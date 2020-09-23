class GroupsController < ApplicationController
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


  private

  def group_paramns
    params.require(:group).permit(:room,:subject_id)
  end
  

  
end
