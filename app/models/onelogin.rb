class Onelogin < ApplicationRecord
    enum status: [ :Pending, :Inprogress, :Failed, :Completed, :Aborted, :Archieved ]
end
