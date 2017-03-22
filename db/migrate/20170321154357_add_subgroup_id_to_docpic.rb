class AddSubgroupIdToDocpic < ActiveRecord::Migration[5.0]
  def change
    add_column :docpics, :subgroup_id, :integer
  end
end
