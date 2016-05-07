class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, first: true
  end
end
