class Api::GuestsController < ApplicationController
    before_action :set_guest, only: [:show, :edit, :update ]

    def index 
        guests = Guest.all 
        render json: GuestSerializer.new(guests) 
    end

    def new 
        guest = Guest.new
        render json: GuestSerializer.new(guest)
    end

    def create 
        guests = Guest.all
        guest = Guest.new(guest_params)
        guest.save
        render json: GuestSerializer.new(guests)
    end 

    def edit 
    end 

    def update 
            @guest.update(guest_params)
            @guest.save
            render json: GuestSerializer.new(@guest)
    end 

    def show 
        guests = Guest.all
        render json: GuestSerializer.new(guests)
    end 

    private

    def guest_params 
        params.fetch(:guest).permit(:name, :balance, :won_games, :lost_games, :total_played)
    end

    def set_guest 
        @guest = Guest.first
    end
end
