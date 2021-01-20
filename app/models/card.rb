class Card < ApplicationRecord

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :keywords, presence: true
    validates :desc, presence: true
    validates :suit, presence: true

end
