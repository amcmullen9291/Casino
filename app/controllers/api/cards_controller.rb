class Api::CardsController < ApplicationController
    before_action :set_card, only: [ :show ]

    def index 
        cards = Card.all 
        render json: CardSerializer.new(cards) 
    end

    def new 
        @card = Card.new
    end

    def create 
        @card = Card.new
        if @card.create(card_params)
            render json: @card
        else
            render :new, notice: "Image did not load."
        end
    end

    def show 
        @card = Card.find(params[:id])
        render json: @card
    end 

    private 
    def card_params 
        params.require(:card).permit(:suit, :value, :card_number, :image)
    end

    def set_card 
        @card = Card.find(params[:id])
    end
end
