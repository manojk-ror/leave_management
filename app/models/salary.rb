class Salary < ActiveRecord::Base
  attr_accessible :applicable_month, :applicable_salary, :deduction, :deduction_description, :employee_id, :leave_info_id, :previous_month_salary
  belongs_to :employee
  belongs_to :leave_info
end
