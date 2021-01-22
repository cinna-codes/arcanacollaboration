class Reading < ApplicationRecord
    belongs_to :post
    belongs_to :card

    validates :upright, presence: true
    validates :desc, presence: true
    validates :post_id, presence: true
    validates :spread_id, presence: true
end
