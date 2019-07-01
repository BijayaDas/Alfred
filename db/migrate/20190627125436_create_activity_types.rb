class CreateActivityTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_types do |t|
      t.integer :activity_type #enum
      t.string :reason_started
      t.string :days
      t.integer :frequency
      t.datetime :pause_start
      t.datetime :pause_end
      t.timestamps
    end
  end
end
