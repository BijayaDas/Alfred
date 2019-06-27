class List < ApplicationRecord
    enum list_type: [ :bucketlist, :goals, :shoppinglist, :wishlist, :todolist, 
        :dreams, :ideas, :takechallenges, :weakness, :streangth, :iwanthelplist, 
        :dontdolist, :tips_trics_suggestion, :list_books_to_read, :daily_chores, 
        :travel_trip_list, :myquestions_doubts, :contactslist, :newyearresolution, 
        :needtolearnlist, :important_links_list]

    enum status: [ :pending, :inprogress, :failed, :completed, :aborted, :archieved ]
end
