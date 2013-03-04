class ChangeApplicantIdToLeaveInfo < ActiveRecord::Migration
  def up
  remove_column :leave_infos, :applicant_id
  add_column :leave_infos, :applicant_id, :integer
  end

  def down
  remove_column :leave_infos, :applicant_id
  end
end
