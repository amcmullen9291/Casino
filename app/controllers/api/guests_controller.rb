class Api::GuestsController < ApplicationController
    def new 
        @guest = Guest.new
        render json: @guest
    end

    def create 
    end 

    def edit 
    end 

    def update 
    end 

    def show 
    end 
end
