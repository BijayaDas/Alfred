class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.string :heading
      t.text :description
      t.string :tag #enum
      t.string :status #enum
      t.references :goal, index: true #foreignkey
      t.integer :milestone_serial
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
