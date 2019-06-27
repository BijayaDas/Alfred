class Financial < ApplicationRecord
    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]
    enum tag: [ :rent, :bills, :shopping, :family, :dining, :grocery]
    enum finance_type: [ :income, :expence, :investment, :borrowed, :loaned]
end
