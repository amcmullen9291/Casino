class Card < ApplicationRecord
    validates_presence_of :suit 
    validates_presence_of :value
    validates_presence_of :card_number, uniqueness: true
    has_one_attached :avatar
end
