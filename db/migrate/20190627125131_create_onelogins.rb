class CreateOnelogins < ActiveRecord::Migration[5.2]
  def change
    create_table :onelogins do |t|
      t.string :application_name
      t.text :url
      t.string :username
      t.string :password
      t.text :additional_info
      t.string :status #enum
      t.timestamps
    end
  end
end
