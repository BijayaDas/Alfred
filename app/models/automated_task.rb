class AutomatedTask < ApplicationRecord
    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]
    enum task_type: [ :bills, :emails]
end
