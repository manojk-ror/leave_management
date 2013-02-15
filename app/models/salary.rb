class Salary < ActiveRecord::Base
  attr_accessible :applicable_month, :applicable_salary, :deduction, :deduction_description, :employee_id, :previous_month_salary
  validates :applicable_salary,:previous_month_salary, :deduction, :presence => true
  belongs_to :employee
 
end
