class CreateAutomatedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :automated_tasks do |t|
      t.string :task_name
      t.string :task_type #enum
      t.datetime :scheduled_date
      t.string :status #enum
      t.integer :frequency
      t.integer :attempts
      t.timestamps
    end
  end
end
