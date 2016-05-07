class RemoveFirstNameFromUsers < ActiveRecord::Migration
  def change
    def up
      remove_column :users, :first_name
      remove_column :users, :last_name
      add_column :users, :username, :string
    end
    
    def down
      add_column :users, :firt_name, :string
      add_column :users, :last_name, :string
      remove_column :users, :username
    end
  end
end
