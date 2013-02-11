class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :employee_id
      t.datetime :applicable_month
      t.float :previous_month_salary
      t.float :applicable_salary
      t.float :deduction
      t.text :deduction_description

      t.timestamps
    end
  end
end
