class AddCategoryAttributeToGroup < ActiveRecord::Migration[5.0]
  def change
    add_column :groups, :category, :integer
  end
end
