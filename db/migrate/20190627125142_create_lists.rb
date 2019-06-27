class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :detailed_plan
      t.string :list_type #enum
      t.string :status #enum
      t.datetime :deadline
      t.datetime :start_date
      t.datetime :end_date
      t.integer :durration
      t.timestamps
    end
  end
end
