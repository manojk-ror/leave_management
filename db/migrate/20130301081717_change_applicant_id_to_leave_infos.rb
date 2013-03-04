class ChangeApplicantIdToLeaveInfos < ActiveRecord::Migration
  def up
   change_column :leave_infos, :applicant_id, :integer
  end

  def down
    change_column :leave_infos, :applicant_id, :string
  end
end
 
 
