class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.integer :event_type_id
      t.string :name

      t.timestamps
    end
  end
end
