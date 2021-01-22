class Post < ApplicationRecord
    belongs_to :user
    belongs_to :spread
    has_many :readings
    has_many :cards, through: :readings

    validates :title, uniqueness: {
        scope: %i[user_id title],
        message: 'post titles must be unique per user'
    }
end