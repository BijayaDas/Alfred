class CreateNoticeboards < ActiveRecord::Migration[5.2]
  def change
    create_table :noticeboards do |t|

      t.timestamps
    end
  end
end
