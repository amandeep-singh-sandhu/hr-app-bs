class RenameEmployeesBioAttr < ActiveRecord::Migration[7.1]
  def change
    rename_column :employees, :bio, :about
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
