class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :heading
      t.string :content
      t.integer :frequency
      t.string :status
      t.datetime :last_notified_at
      t.datetime :expired_at
      t.timestamps
    end
  end
end
