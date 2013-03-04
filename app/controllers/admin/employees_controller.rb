class Admin::EmployeesController < ApplicationController
  layout "admin"
  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
    @employee.build_personal_info
  end

  def show
     @employee = Employee.find(params[:id])
     unless @employee.personal_info.present?
       redirect_to admin_employees_path, :notice =>  ' Employee Personal information  not present.'
     end
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:notice] = "Successfully created User." 
      redirect_to admin_employee_path(@employee), :notice =>  'Successfully created Employee.'
    else
      render :action => 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end


  def update
    @employee = Employee.find(params[:id])
    params[:employee].delete(:password) if params[:employee][:password].blank?
    params[:employee].delete(:password_confirmation) if params[:employee][:password].blank? and params[:employee][:password_confirmation].blank?
    if @employee.update_attributes(params[:employee])
      redirect_to admin_employee_path(@employee), notice: 'leave info was successfully updated.'
    else 
      render action: "edit" 
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Successfully deleted User."
    redirect_to [:admin, @employee]
  end
  
  
   
   
 
end
 
