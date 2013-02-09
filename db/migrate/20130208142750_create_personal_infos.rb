class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.integer :employee_id
      t.string :name
      t.string :father_name
      t.string :mother_name
      t.datetime :date_of_birth
      t.string :permanent_address
      t.string :local_address
      t.string :email
      t.string :alternate_email
      t.integer :phone
      t.integer :home_phone

      t.timestamps
    end
  end
end
