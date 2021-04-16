class Card < ApplicationRecord
    validates_presence_of :suit 
    validates_presence_of :value
    validates_presence_of :card_number, uniqueness: true
    # has_one_attached :avatar

    @usedCards = []   
    @cards = Card.all.collect(&:id)

    def draw
        if @cards && @usedCards
            @usedCards << @cards.shuffle!.pop
            if @usedCards[-1]> @usedCards[-2]
                return "higher"
            elsif @usedCards[-1] < @usedCards[-2]
                return "lower"
            else
                return "equal"
            end
            return @usedcards.length
            if @userCards.length = 52
                restartPlay 
            end
        end
    end

    def restartPlay
        @@usedCards = []
    end 

end
