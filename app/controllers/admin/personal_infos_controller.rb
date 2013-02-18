class Admin::PersonalInfosController < ApplicationController
  def index
    @personal_infos = PersonalInfo.all
  end

  def show
    #@employee = Employee.find(params[:id])
    @personal_info = PersonalInfo.find(params[:id])
  end
 
  def new
    #@employe = Employee.find(params[:id])
    @personal_info = PersonalInfo.new
    
    
  end
 
  def edit
    #@employee = Employee.find(params[:id])
    @personal_info = PersonalInfo.find(params[:id])
    
  end

  def create
    @personal_info = PersonalInfo.new(params[:personal_info])
    if @personal_info.save
      redirect_to [:admin,@personal_info], notice: 'Personal info was successfully created.' 
    else
      render action: "new"
    end
  end


  def update
    @personal_info = PersonalInfo.find(params[:id])
    if @personal_info.update_attributes(params[:personal_info])
      redirect_to admin_personal_info_path(@personal_info), notice: 'Personal info was successfully updated.' 
    else
      render action: "edit"
    end
  end


  def destroy
    @personal_info = PersonalInfo.find(params[:id])
    @personal_info.destroy
    redirect_to [:admin,@personal_info]
  end
  def show_perticular_personal_info
    @employee = Employee.find(params[:id])
    @personal = PersonalInfo.where(:employee_id => @employee.id)[0]
    if @personal.present?
      render "record_created"
    else
     @personal_info = PersonalInfo.new
     render "show_perticular_personal_info"
      
    
       #notice: 'Personal info was successfully render.'
   end
    #@personal_info = PersonalInfo.find(params[:id])
  end
  def record_created
  end
  
end
