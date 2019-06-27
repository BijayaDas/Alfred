class CreateDigitalLockers < ActiveRecord::Migration[5.2]
  def change
    create_table :digital_lockers do |t|
      t.string :file_name
      t.string :document_type #enum
      t.references :digital_locker_folder, index: true #foreignkey
      t.timestamps
    end
  end
end
