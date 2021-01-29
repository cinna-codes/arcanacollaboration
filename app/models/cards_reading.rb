class CardsReading < ApplicationRecord
    belongs_to :card
    belongs_to :reading

    # validates :num, presence: true
    # validates :num, uniqueness: {
    #     scope: %i[reading_id],
    #     message: 'cards cannot share a spot in order with one another, e.g. two cards cannot be considered first in order'
    # }
    # validates :upright, presence: true
    validates :card_id, presence: true
    # validates :reading_id, presence: true

    # validates :card_id, uniqueness: {
    #     scope: %i[reading_id],
    #     message: 'cannot draw the same card twice'
    # }

    scope :is_upright, -> { where(upright: true) }
    scope :is_reversed, -> { where(upright: false) }
    scope :upright_count, -> { is_upright.count }
    scope :reversed_count, -> { is_reversed.count }
    scope :is_card, ->(is_card_id) { where("card_id = ?", is_card_id) }
    # implement at least one somewhere


    def card_name_and_position
        "#{self.card_name}, #{self.position}"
    end

    def card_name
        self.card.name
    end

    def position
        self.upright ? "Upright" : "Reversed"
    end

end
