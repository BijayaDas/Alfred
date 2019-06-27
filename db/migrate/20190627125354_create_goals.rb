class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :heading
      t.text :plan
      t.datetime :start_date
      t.datetime :end_date
      t.integer :number_of_milestones
      t.string :tag #enum
      t.string :status #enum
    end
  end
end
