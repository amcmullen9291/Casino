class Api::CardsController < ApplicationController

    def index 
        cards = Card.all 
        render json: CardSerializer.new(cards) 
    end

    def create 
        @card = Card.new(card_params)
        @card.save
        render json: CardSerializer.new(@card)
    end

    def show 
        @card = Card.find(params[:id])
        render json: @card
    end 

    private 
    def card_params 
        params.require(:card).permit(:suit, :value, :card_number, :image_url, :avatar)
    end

    def set_card 
        @card = Card.find(params[:id])
    end

    def avatar
        card = Card.find_by(:id => params[:id])
        if card&.avatar&.attached?
            redirect_to rails_blob_url(card.avatar)
        else
            head :not_found
        end
    end 
end
