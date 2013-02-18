class LeaveInfosController < ApplicationController
  #before_filter :create_object_existing_tables, :only => :new

  def index
    @leave_infos = LeaveInfo.all
  end

  def show
    @leave_info = LeaveInfo.find(params[:id])
    
  end

  def new
    @leave_info = LeaveInfo.new
  end

  def edit
    @leave_info = LeaveInfo.find(params[:id])
  end

  def create
    @leave_info = LeaveInfo.new(params[:leave_info])

      if @leave_info.save
        redirect_to [:admin, @leave_info], notice: 'Leave info was successfully created.' 
      else
        render action: "new" 
      end
  end

  def update
    @leave_info = LeaveInfo.find(params[:id])
    if @leave_info.update_attributes(params[:leave_info])
      redirect_to @leave_info, notice: 'Leave info was successfully updated.'
    else
      render action: "edit" 
    end
  end

  def destroy
    @leave_info = LeaveInfo.find(params[:id])
    @leave_info.destroy
    redirect_to leave_infos_url 
  end
  
end
