class ActivityType < ApplicationRecord
    enum activity_type: [ :sleep, :yoga, :pranayam, :jalneti, :meditation,
        :running, :gym_or_sports, :haircare, :dentalcare, :diet, :disease, :travel,
        :adventure, :reading_books, :daily_journal, :special_life_event, 
        :appointments, :hollydeed, :psychology]

    has_many :activities, dependent: :destroy
end
