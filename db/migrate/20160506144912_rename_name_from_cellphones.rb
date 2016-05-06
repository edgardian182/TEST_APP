class RenameNameFromCellphones < ActiveRecord::Migration
  def change
    rename_column :cellphones, :name, :reference
  end
end
