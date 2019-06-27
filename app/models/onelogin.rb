class Onelogin < ApplicationRecord
    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]
end
