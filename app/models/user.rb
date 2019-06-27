class User < ApplicationRecord
    enum gender: [ :male, :female ]
end
