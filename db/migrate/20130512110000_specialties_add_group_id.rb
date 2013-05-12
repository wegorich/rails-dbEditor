class SpecialtiesAddGroupId < ActiveRecord::Migration
  def change
    add_column :specialties, :group_id, :integer
  end
end
