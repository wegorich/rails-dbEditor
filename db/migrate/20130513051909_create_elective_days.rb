class CreateElectiveDays < ActiveRecord::Migration
  def change
    create_table :elective_days do |t|
      t.integer :num
      t.datetime :time
      t.integer :elective_id

      t.timestamps
    end
  end
end
