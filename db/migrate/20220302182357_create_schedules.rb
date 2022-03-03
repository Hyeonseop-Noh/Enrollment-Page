class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer  :tutor_id
      t.datetime :start_time
      t.integer  :active
      
      t.timestamps
    end
  end
end
