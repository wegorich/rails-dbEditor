class CreateSpecializables < ActiveRecord::Migration
  def change
    create_table :specializables do |t|
      t.integer :specialty_id
      t.integer :firm_id

      t.timestamps
    end
  end
end
