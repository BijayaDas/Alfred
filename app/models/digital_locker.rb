class DigitalLocker < ApplicationRecord
    enum document_type: [ :financial, :academics, :healthrecords, :ebooks, :travel, :professional, :confidential]

    belongs_to :digital_lock_folder
end
