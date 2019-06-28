class Notification < ApplicationRecord
    enum status: [ :snoozed, :expired ]
end
