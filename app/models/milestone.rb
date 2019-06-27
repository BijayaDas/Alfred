class Milestone < ApplicationRecord
    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]
    enum tags: [ :rent, :bills, :shopping, :family, :dining, :grocery]

    belongs_to :goal
end
