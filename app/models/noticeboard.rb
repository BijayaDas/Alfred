class Noticeboard < ApplicationRecord
    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]
    enum notice_type: [ :noticeboard,  :stickynote,  :notification,  :reminder]
end
