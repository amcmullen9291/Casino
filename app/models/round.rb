class Round < ApplicationRecord
    serialize :usedCards, Array
    serialize :availableCards, Array    
end
