class RemoveColumnToSchedule < ActiveRecord::Migration[7.0]
  def change
    remove_column :schedules, :sub_place_id
  end
end
