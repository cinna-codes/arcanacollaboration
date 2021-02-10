class Spread < ApplicationRecord

    validates :title, presence: true
    validates :title, uniqueness: true
    validates :desc, presence: true
    # validates :num_of_cards, presence: true

    has_many :readings
    has_many :users, through: :spreads

    scope :alphabetize, -> { order(:title) }

end