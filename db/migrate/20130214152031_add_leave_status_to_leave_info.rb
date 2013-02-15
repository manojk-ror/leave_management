class AddLeaveStatusToLeaveInfo < ActiveRecord::Migration
  def change
    add_column :leave_infos, :leave_status, :string, :default => "Pending"
  end
end
