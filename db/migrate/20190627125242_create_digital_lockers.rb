class CreateDigitalLockers < ActiveRecord::Migration[5.2]
  def change
    create_table :digital_lockers do |t|

      t.timestamps
    end
  end
end
