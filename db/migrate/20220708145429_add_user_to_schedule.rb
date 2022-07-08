class AddUserToSchedule < ActiveRecord::Migration[7.0]
  def change
    add_reference :schedules, :user, null: false, foreign_key: true
  end
end
