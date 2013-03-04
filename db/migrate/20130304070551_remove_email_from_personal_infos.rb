class RemoveEmailFromPersonalInfos < ActiveRecord::Migration
  def up
    remove_column :personal_infos, :email
  end

  def down
    add_column :personal_infos, :email, :string
  end
end
