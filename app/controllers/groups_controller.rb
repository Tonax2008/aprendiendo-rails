class GroupsController < ApplicationController
  def new
  @group = Group.new
  end

    def create 
      @group=Group.new group_paramns
    
      @group.save
      #debugger 
  end

    private

  def group_paramns
      params.require(:group).permit(:code_group,:code_subject_id)
  end
  

  def create
  end
end
