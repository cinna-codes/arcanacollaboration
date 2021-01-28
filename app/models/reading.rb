class Reading < ApplicationRecord
    belongs_to :user
    belongs_to :spread
    has_many :cards_readings
    has_many :cards, through: :cards_readings

    validates :desc, presence: true
    validates :user_id, presence: true
    validates :spread_id, presence: true

    accepts_nested_attributes_for :cards_readings
end
