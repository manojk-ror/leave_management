class Admin::SalariesController < ApplicationController

  def index
    @salaries = Salary.all
  end


  def show
    @salary = Salary.find(params[:id])
  end

  def new
    @salary = Salary.new
  end

  
  def edit
    @salary = Salary.find(params[:id])
  end


  def create
    @salary = Salary.new(params[:salary])
    if @salary.save
      redirect_to [:admin,@salary], notice: 'Salary was successfully created.'
    else
      render action: "new" 
    end
  end


  def update
    @salary = Salary.find(params[:id])
    if @salary.update_attributes(params[:salary])
      redirect_to [:admin,@salary], notice: 'Salary was successfully updated.' 
    else
      render action: "edit" 
    end
  end



  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    redirect_to [:admin, @salary] 
  end

end
