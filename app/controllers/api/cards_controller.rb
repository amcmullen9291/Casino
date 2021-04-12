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
        @card = Card.new(params)
        if @card.save
            @card.image.attach(params[:image])
            render json: @card
        end
    end

    def show 
        @card = Card.find(params[:id])
        render json: @card
    end 

    private 
    def card_params 
        params.require(:card).permit(:suit, :value, :card_number, :image_url)
    end

    def set_card 
        @card = Card.find(params[:id])
    end
end
