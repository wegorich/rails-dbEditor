class FirmAddFields < ActiveRecord::Migration
  def change
    add_column :firms, :description, :string
    add_column :firms, :address, :string
  end
end
