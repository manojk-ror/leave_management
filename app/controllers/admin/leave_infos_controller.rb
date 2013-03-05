class Admin::LeaveInfosController < ApplicationController
  autocomplete :employee, :email, :full => true
  layout "admin"
  
  def index
    if !params[:start_date].blank? and !params[:end_date].blank?
      @leave_infos = LeaveInfo.find_by_date(params[:start_date],params[:end_date])
    else
      @leave_infos = LeaveInfo.latest_leave
    end
  end


  def show
    @leave_info = LeaveInfo.find(params[:id])
    unless @leave_info.present?
      redirect_to admin_leave_infos_path, notice: 'Leave info was successfully Updated.' 
    end
  end
  
  def edit
    @leave_info = LeaveInfo.find(params[:id])
  end


  def create
    @leave_info = LeaveInfo.new(params[:leave_info])
    if(@leave_info.applicant_id == '')
        @leave_info.applicant_id = current_employee.personal_info.name
    end
    if @leave_info.save
      EmployeeMailer.welcome_email(@leave_info).deliver
      redirect_to [:admin, @leave_info], notice: 'Leave info was successfully created.' 
    else
      render action: "new"      
    end
  end
 

  def update
    @leave_info = LeaveInfo.find(params[:id])
    if @leave_info.update_attributes(params[:leave_info])
      redirect_to admin_leave_info_path(@leave_info), notice: 'leave info was successfully updated.'
    else 
      render action: "edit" 
    end
  end

  def show_perticular_leaves
    @employee = Employee.find(params[:id])
    @leave_infos = @employee.leave_infos.latest_leave
  end

end
