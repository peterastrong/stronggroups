class CreateSubgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :subgroups do |t|
      t.integer :group_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
