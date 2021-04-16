class Round < ApplicationRecord
    has_many :cards
    belongs_to :guest

    # usedCards = []   
    # @cards = Card.all.collect(&:id)

    # def draw
    #     usedCards << @cards.shuffle!.pop
    #     if usedCards[-1] > usedCards[-2]
    #         return "higher"
    #     elsif usedCards[-1] < usedCards[-2]
    #         return "lower"
    #     else
    #         return "equal"
    #     end
    #     return @cards.length
    #     if userCards.length = 52
    #         restartPlay 
    #     end
    # end

    # def restartPlay
    #     usedCards = []
    # end 
    # needs a shuffle function to break up the flow between rounds

end
