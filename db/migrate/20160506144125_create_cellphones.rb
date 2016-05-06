class CreateCellphones < ActiveRecord::Migration
  def change
    create_table :cellphones do |t|
      t.string :name
      t.string :os
      t.integer :user_id
    end
  end
end
