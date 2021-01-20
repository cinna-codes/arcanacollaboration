class Spread < ApplicationRecord

    validates :title, presence: true
    validates :title, uniqueness: true
    validates :desc, presence: true
    validates :num_of_cards, presence: true

end