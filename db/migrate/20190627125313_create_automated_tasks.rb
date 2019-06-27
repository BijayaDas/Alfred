class CreateAutomatedTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :automated_tasks do |t|

      t.timestamps
    end
  end
end
