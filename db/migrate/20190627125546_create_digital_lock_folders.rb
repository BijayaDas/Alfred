class CreateDigitalLockFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :digital_lock_folders do |t|

      t.timestamps
    end
  end
end
