class AddApplicantIdToLeaveInfo < ActiveRecord::Migration
  def change
    add_column :leave_infos, :applicant_id, :string
  end
end
