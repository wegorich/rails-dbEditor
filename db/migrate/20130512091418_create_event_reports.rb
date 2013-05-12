class CreateEventReports < ActiveRecord::Migration
  def change
    create_table :event_reports do |t|
      t.string :name
      t.boolean :tech_support
      t.boolean :hostel
      t.text :sinopsis
      t.integer :event_id

      t.timestamps
    end
  end
end
