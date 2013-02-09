class CreateLeaveInfos < ActiveRecord::Migration
  def change
    create_table :leave_infos do |t|
      t.integer :employee_id
      t.date :start_date
      t.date :end_date
      t.float :status_of_day
      t.text :reason_of_leave
      t.string :to_email_ids
      t.string :cc_email_ids
      t.boolean :reference_status
      t.string :applicant_name

      t.timestamps
    end
  end
end
