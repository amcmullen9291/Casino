class Round < ApplicationRecord
    validates_presence_of :availableCards
    belongs_to :guest

    usedCards = []   
    @cards = Card.all.collect(&:id)

    def draw
        usedCards << @cards.shuffle!.pop
        if usedCard[-1] > usedCards[-2]
            return "higher"
        else
            return "lower"
        end
        return @cards.length 
    end

    def compared 
        if usedCard[last_element-1] > usedCards[last_element]
            return "lower"
        else
            return "higher"
        end
    end 
end
