class CreateNoticeboards < ActiveRecord::Migration[5.2]
  def change
    create_table :noticeboards do |t|
      t.string :heading
      t.string :content
      t.string :notice_type #enum
      t.integer :reminder_frequency
      t.date :expiry_date
      t.string :status #enum
      t.timestamps
    end
  end
end
