class CreateUserSubgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :user_subgroups do |t|
      t.integer :user_id
      t.integer :subgroup_id

      t.timestamps
    end
  end
end
