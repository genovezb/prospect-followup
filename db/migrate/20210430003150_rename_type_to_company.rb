class RenameTypeToCompany < ActiveRecord::Migration[6.0]
  def change
    rename_column :responsables, :type, :company
  end
end
