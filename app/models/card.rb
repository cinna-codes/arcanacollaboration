class Card < ApplicationRecord
    has_many :cards_readings
    has_many :readings, through: :cards_readings

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :keywords, presence: true
    validates :desc, presence: true
    validates :suit, presence: true
end
