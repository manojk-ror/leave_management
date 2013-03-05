class PersonalInfosController < ApplicationController
   layout "user"
  

  def show
    @personal_info = PersonalInfo.find(params[:id])
  end
  
  def edit
    @personal_info = PersonalInfo.find(params[:id])
    unless @personal_info.employee_id == current_employee.id
      redirect_to root_path, flash[:notice] => "You don't have permission"
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
 

