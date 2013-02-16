class AddAdminStatusToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :admin_status, :boolean, :default => false
    employee = Employee.create!(:email => 'admin@grepruby.com', :password => 'grepruby', :admin_status => true)
      #employee.skip_confirmation!
      employee.save
    end  
  end
end
