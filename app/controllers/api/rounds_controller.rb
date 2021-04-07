class Api::RoundsController < ApplicationController
    before_action :set_round, only: [ :show, :edit, :update ]
    def new 
        @round = Round.new
        render json: @round
    end

    def create 
        if @round.create(round_params)
            render json: @round
        else
            render :new
        end

    end

    def show 
        @round = Round.find(params[:id])
        render json: @round
    end 

    def edit 
    end 

    def update 
        if @round.create(card_params)
            render json: @round
        else
            render :edit
        end

    end 

    private 
    
    def round_params 
        params.require(:round).permit(:availableCards, :previousCard_value, :currentCard_value, usedCards, :guest_bet, :outcome)
    end

    def set_round 
        @round = Round.find(params[:id])
    end
end
