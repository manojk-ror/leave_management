class RemoveApplicantNameFromLeaveInfo < ActiveRecord::Migration
  def up
    remove_column :leave_infos, :applicant_name
  end

  def down
    add_column :leave_infos, :applicant_name, :string
  end
end
