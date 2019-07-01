class CreateFinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :financials do |t|
      t.string :header
      t.text :content
      t.datetime :transaction_date
      t.integer :tag #enum
      t.integer :finance_type #enum
      t.integer :status #enum
      t.integer :annual_growth_perventage
      t.timestamps
    end
  end
end
