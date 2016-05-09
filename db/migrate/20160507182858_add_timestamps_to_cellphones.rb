class AddTimestampsToCellphones < ActiveRecord::Migration
  def change
    add_column :cellphones, :created_at, :datetime
    add_column :cellphones, :updated_at, :datetime
  end
end
