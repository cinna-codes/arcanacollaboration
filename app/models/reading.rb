class Reading < ApplicationRecord
    belongs_to :user
    belongs_to :spread
    has_many :cards_readings
    has_many :cards, through: :cards_readings

    validates :desc, presence: true
    validates :user_id, presence: { message: 'you must be logged in!' }
    validates :spread_id, presence: true

    accepts_nested_attributes_for :cards_readings

    scope :belongs_to_user, ->(user_id_x) { where("user_id = ?", user_id_x) }
    scope :belongs_to_spread, ->(spread_id_x) { where("spread_id = ?", spread_id_x) }
end
