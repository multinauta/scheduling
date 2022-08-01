class AddPlaceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :place, null: false, foreign_key: true, default: 1
  end
end
