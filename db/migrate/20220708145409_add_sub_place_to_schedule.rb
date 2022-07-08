class AddSubPlaceToSchedule < ActiveRecord::Migration[7.0]
  def change
    add_reference :schedules, :sub_place, null: false, foreign_key: true
  end
end
