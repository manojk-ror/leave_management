class PersonalInfosController < ApplicationController
   layout "user"
  def index
    @personal_infos = current_employee.personal_info
    unless @personal_infos.present?
      redirect_to new_personal_info_path
    end
    #@employees = Employee.all
  end

  def show
    @personal_info = PersonalInfo.find(params[:id])
  end
 
  def new
    if current_employee.personal_info
      redirect_to root_path
    end
    @personal_info = PersonalInfo.new
  end
 
  def edit
    #@personal_info = current_employee.personal_info.(:id => params[:id])
    @personal_info = PersonalInfo.find(params[:id])
    unless @personal_info.employee_id == current_employee.id
      redirect_to root_path, flash[:notice] => "You don't have permission"
    end
  end

  def create
    @personal_info = PersonalInfo.new(params[:personal_info])
    if @personal_info.save
      redirect_to @personal_info, notice: 'Personal info was successfully created.' 
    else
      render action: "new"
    end
  end


  def update
    @personal_info = PersonalInfo.find(params[:id])
    if @personal_info.update_attributes(params[:personal_info])
      redirect_to personal_info_path(@personal_info), notice: 'Personal info was successfully updated.' 
    else
      render action: "edit"
    end
  end

end
