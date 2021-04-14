class Card < ApplicationRecord
    attr_accessor :avatar
    validates_presence_of :suit 
    validates_presence_of :value
    validates_presence_of :card_number, uniqueness: true
    has_one_attached :avatar

    usedCards = []
    def roundPlay
        @cards = Card.all
        usedCards << card.shuffle!.pop
        currentCard = usedCards[1]
        previousCard = usedCards[-2]
        result = Math.max(currentCard, previousCard)
        if result == currentCard
            return "higher"
        else
            return "lower"
        end
    end

    def restartPlay
        usedCards = []
    end 
    
end
