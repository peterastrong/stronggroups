class AddUserIdToDocpics < ActiveRecord::Migration[5.0]
  def change
    add_column :docpics, :user_id, :integer
  end
end
