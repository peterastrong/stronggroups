class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :group_id
      t.integer :subgroup_id
      t.string :name
      t.date :date
      t.text :description
      t.date :registration_deadline
      t.date :due_date
      t.boolean :must_register? 

      t.timestamps
    end
  end
end
