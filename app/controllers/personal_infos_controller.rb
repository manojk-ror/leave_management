class PersonalInfosController < ApplicationController
  # GET /personal_infos
  # GET /personal_infos.json
  def index
    @personal_infos = PersonalInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_infos }
    end
  end

  # GET /personal_infos/1
  # GET /personal_infos/1.json
  def show
    @personal_info = PersonalInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_info }
    end
  end

  # GET /personal_infos/new
  # GET /personal_infos/new.json
  def new
    @personal_info = PersonalInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_info }
    end
  end

  # GET /personal_infos/1/edit
  def edit
    @personal_info = PersonalInfo.find(params[:id])
  end

  # POST /personal_infos
  # POST /personal_infos.json
  def create
    @personal_info = PersonalInfo.new(params[:personal_info])

    respond_to do |format|
      if @personal_info.save
        format.html { redirect_to @personal_info, notice: 'Personal info was successfully created.' }
        format.json { render json: @personal_info, status: :created, location: @personal_info }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_infos/1
  # PUT /personal_infos/1.json
  def update
    @personal_info = PersonalInfo.find(params[:id])

    respond_to do |format|
      if @personal_info.update_attributes(params[:personal_info])
        format.html { redirect_to @personal_info, notice: 'Personal info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_infos/1
  # DELETE /personal_infos/1.json
  def destroy
    @personal_info = PersonalInfo.find(params[:id])
    @personal_info.destroy

    respond_to do |format|
      format.html { redirect_to personal_infos_url }
      format.json { head :no_content }
    end
  end
end
