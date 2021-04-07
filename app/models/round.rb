class Round < ApplicationRecord
    serialize :usedCards, Array
    serialize :availableCards, Array    
    validates_presence_of :availableCards
    belongs_to :user
    
end
