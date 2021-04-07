class Card < ApplicationRecord
    validates_presence_of :suit 
    validates_presence_of :value, numericality: true
    validates_presence_of :card_number, uniqueness: true
    validates_inclusion_of :value, :in => 1..10
end
