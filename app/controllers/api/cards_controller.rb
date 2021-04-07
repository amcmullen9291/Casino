class Api::CardsController < ApplicationController
    def new 
        @card = Card.new
        render json: @card
    end

    def create 
        @card = Card.new(card_params)
    end

    def show 
        @card = Card.find(params[:id])
        render json: @card
    end 

    private 
    def card_params 
        params.require(:card).permit(:suit, :value, :card_number)
    end
end
