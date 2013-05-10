class CreateElectivesations < ActiveRecord::Migration
  def change
    create_table :electivesations do |t|
      t.integer :user_id
      t.integer :elective_id
    end
  end
end
