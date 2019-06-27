class CreateFinancials < ActiveRecord::Migration[5.2]
  def change
    create_table :financials do |t|
      t.string :header
      t.text :content
      t.datetime :transaction_date
      t.string :tag #enum
      t.string :finance_type #enum
      t.string :status #enum
      t.integer :annual_growth_perventage
      t.timestamps
    end
  end
end
