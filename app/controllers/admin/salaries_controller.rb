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
  
  def add_salary
   @employee = Employee.find(params[:id])
    @sal = Salary.where(:employee_id => @employee.id)[0]
    if @sal.present?
      render "record_created"
    else
     @salary = Salary.new
     render "add_salary"
    end
  end
  
  def record_created
    @employee = Employee.find(params[:id])
     @sal = Salary.find(params[:id])
     render "record_created"
  end
  
  def salary
  @salaries = Salary.all 
  @employees = Employee.all
  end 
end
