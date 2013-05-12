class CreateEventables < ActiveRecord::Migration
  def change
    create_table :eventables do |t|
      t.integer :user_id
      t.integer :event_report_id

      t.timestamps
    end
  end
end
