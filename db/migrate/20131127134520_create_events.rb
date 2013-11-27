class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.string :type_of_event
      t.string :venue
      t.integer :ngo_id , null: false

      t.timestamps
    end
    add_index :events , :ngo_id
  end
end
