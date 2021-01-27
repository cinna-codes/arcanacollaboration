class CardsReading < ApplicationRecord
    belongs_to :card
    belongs_to :reading

    validates :num, presence: true
    validates :num, uniqueness: {
        scope: %i[reading],
        message: 'cards cannot share a spot in order with one another, e.g. two cards cannot be considered first in order'
    }
    validates :upright, presence: true
    validates :card_id, presence: true
    validates :reading_id, presence: true
end
