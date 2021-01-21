class Post < ApplicationRecord
    belongs_to :user
    belongs_to :spread

    validates :title, uniqueness: {
        scope: %i[user_id title],
        message: 'titles must be unique per user'
    }
end