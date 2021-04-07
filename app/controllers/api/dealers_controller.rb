class Api::DealersController < ApplicationController
  def new
    @dealer = Dealer.new
  end

  def create
    @dealer = Dealer.create(params)
    render json: @dealer
  end

  def show 
    @dealer = Dealer.find(params[:id])
    render json: @dealer
  end
  
end
