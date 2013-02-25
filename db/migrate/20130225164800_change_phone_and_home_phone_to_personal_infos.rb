class ChangePhoneAndHomePhoneToPersonalInfos < ActiveRecord::Migration
  def up
    change_column :personal_infos, :phone, :string
    change_column :personal_infos, :home_phone, :string
  end

  def down
    change_column :personal_infos, :phone, :integer
    change_column :personal_infos, :home_phone, :integer
  end
end
