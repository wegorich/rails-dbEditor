class CreateElectiveDays < ActiveRecord::Migration
  def change
    create_table :elective_days do |t|
      t.integer :num

      t.timestamps
    end
  end
end
