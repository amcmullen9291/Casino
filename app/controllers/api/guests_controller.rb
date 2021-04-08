class Api::GuestsController < ApplicationController
    before_action :set_guest, only: [:show, :edit, :update ]

    def index 
        guests = Guest.all 
        render json: GuestSerializer.new(guests) 
        
    end 

    def new 
        @guest = Guest.new
        render json: @guest
    end

    def create 
        @guest = Guest.new
        if @guest.create(guest_params)
            render json: @guest
        else
            render :new
        end
    end 

    def edit 
    end 

    def update 
        if @guest.update(guest_params)
            render json: @guest
        else
            render :edit
        end
    end 

    def show 
        render json: @guest
    end 

    private

    def user_params 
        params.require(:guest).permit(:name, :balance, :gamesPlayed)
    end

    def set_guest 
        @guest = Guest.find(params[:id])
    end
end
