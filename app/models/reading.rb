class Reading < ApplicationRecord
    belongs_to :user
    belongs_to :spread

    validates :desc, presence: true
    validates :user_id, presence: true
    validates :spread_id, presence: true
end
