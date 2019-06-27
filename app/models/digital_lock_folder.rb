class DigitalLockFolder < ApplicationRecord
    has_many :digital_lockers, dependent: :destroy
end
