class AddPlaceToSubPlace < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_places, :place, null: false, foreign_key: true
  end
end
