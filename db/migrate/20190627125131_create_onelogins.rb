class CreateOnelogins < ActiveRecord::Migration[5.2]
  def change
    create_table :onelogins do |t|

      t.timestamps
    end
  end
end
