class LeaveInfosController < ApplicationController
  autocomplete :employee, :email, :full => true
  layout "user"
  
  def index
    if !params[:start_date].blank? and !params[:end_date].blank?
      @leave_infos = LeaveInfo.where("start_date >= ? AND end_date <= ?", params[:start_date],params[:end_date] )
    else
      @leave_infos = current_employee.leave_infos.latest_leave.all
      
    end
    
  end

  def show
    #@leave_info = LeaveInfo.find(params[:id])
    @leave_info = current_employee.leave_infos.where(:id => params[:id]).first
    unless @leave_info.present?
      redirect_to leave_infos_path, :notice => "You don't have permission to access this information"
    end
    
  end

  def new
    @leave_info = LeaveInfo.new
  end

  #def edit
    #@leave_info = LeaveInfo.find(params[:id])
  #end

  def create
    @leave_info = LeaveInfo.new(params[:leave_info])
     
      if @leave_info.applicant_id.blank?
        @leave_info.applicant_id = current_employee.id
      else
        @employee = Employee.find_by_email(params[:leave_info][:applicant_id])
        @leave_info.applicant_id = @employee.id 
      end
      if @leave_info.save
        #EmployeeMailer.welcome_email(@leave_info).deliver
        redirect_to leave_infos_path, notice: 'Leave info was successfully created.' 
      else
        render action: "new" 
      end
  end

  #def update
   #@leave_info = LeaveInfo.find(params[:id])
    #if @leave_info.update_attributes(params[:leave_info])
     # redirect_to @leave_infos_path, notice: 'Leave info was successfully updated.'
   # else
      #render action: "edit" 
    #end
  #end

  
  
end
