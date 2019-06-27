class Goal < ApplicationRecord
    enum tag: [ :rent, :bills, :shopping, :family, :dining, :grocery]
    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]

    has_many :milestones, dependent: :destroy
end
