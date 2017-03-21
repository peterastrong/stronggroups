class AddRegisteredToUserEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :user_events, :registered, :boolean
  end
end
