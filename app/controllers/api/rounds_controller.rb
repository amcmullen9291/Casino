class Api::RoundsController < ApplicationController
    def new 
        @round = Round.new
        render json: @round
    end

    def create 
    end

    def show 
        @round = Round.find(params[:id])
        render json: @round
    end 

    def edit 
    end 

    def update 
    end 

    private 
    def round_params 
        params.require(:round).permit(:availableCards, :previousCard_value, :currentCard_value, usedCards, :guest_bet)
    end

end
