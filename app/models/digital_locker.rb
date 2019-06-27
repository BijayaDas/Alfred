class DigitalLocker < ApplicationRecord
    enum document_type: [ :financial, :academics,
        :healthrecords, :ebooks, :travel, :professional, :private]

    belongs_to :digital_lock_folder
end
