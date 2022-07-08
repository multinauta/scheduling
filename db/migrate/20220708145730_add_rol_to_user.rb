class AddRolToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :rol, null: false, foreign_key: true, default: 1
  end
end
