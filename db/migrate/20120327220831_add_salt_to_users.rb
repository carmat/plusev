class AddSaltToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string
  end
  
  def self.up
    remove_column :users, :salt
  end
end
