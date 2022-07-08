class Schedule < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :datetime
      t.boolean :state

      t.timestamps
    end
  end
end
