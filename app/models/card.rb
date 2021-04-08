class Card < ApplicationRecord
    validates_presence_of :suit 
    validates_presence_of :value, :value :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10 }
    validates_presence_of :card_number, uniqueness: true
    belongs_to :round
end
