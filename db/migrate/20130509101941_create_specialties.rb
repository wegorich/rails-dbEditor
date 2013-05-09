class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.integer :num
      t.string :name

      t.timestamps
    end
  end
end
