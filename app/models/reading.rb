class Reading < ApplicationRecord
    validates :upright, presence: true
    validates :desc, presence: true
    validates :post_id, presence: true
    validates :spread_id, presence: true
end
