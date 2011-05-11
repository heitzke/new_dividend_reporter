class AddMiddleInitialToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :middle_initial, :string
  end

  def self.down
    remove_column :users, :middle_initial
  end
end
