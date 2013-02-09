class Salary < ActiveRecord::Base
  attr_accessible :applicable_month, :applicable_salary, :deduction, :deduction_description, :employee_id, :previous_month_salary
  belongs_to :employee
 
end
