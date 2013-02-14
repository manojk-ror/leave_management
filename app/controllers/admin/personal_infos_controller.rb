class Admin::PersonalInfosController < ApplicationController

  def index
    @personal_infos = PersonalInfo.all
  end


  def show
    @personal_info = PersonalInfo.find(params[:id])
  end

 
  def new
    @personal_info = PersonalInfo.new
  end

 
  def edit
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
  
end
