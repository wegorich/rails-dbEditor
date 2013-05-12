class UserAddGroupId < ActiveRecord::Migration
  def change
    add_column :users, :group_id, :integer
    add_column :users, :phone, :string
    add_column :users, :city, :string
    add_column :users, :address, :string
  end
end
