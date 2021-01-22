class Reading < ApplicationRecord
    belongs_to :user
    belongs_to :card

    validates :desc, presence: true
    validates :post_id, presence: true
    validates :spread_id, presence: true
end
