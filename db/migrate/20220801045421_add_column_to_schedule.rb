class AddColumnToSchedule < ActiveRecord::Migration[7.0]
  def change
    add_column :schedules, :place_id, :integer, references: :places
  end
end
