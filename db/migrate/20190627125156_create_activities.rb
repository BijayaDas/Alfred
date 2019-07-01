class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.datetime :activity_date
      t.text :content
      t.references :activity_type, index: true #foreignkey
      t.datetime :time_started
      t.datetime :time_ended
      t.integer :duration
      t.string :excuse
      t.integer :status #enum
      t.timestamps     
    end
  end
end
