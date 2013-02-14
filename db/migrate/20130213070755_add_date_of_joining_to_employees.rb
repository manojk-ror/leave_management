class AddDateOfJoiningToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :date_of_joining, :date
  end
end
