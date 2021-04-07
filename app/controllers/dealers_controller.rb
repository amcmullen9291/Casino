class DealersController < ApplicationController
  def new
    @dealer = Dealer.new
  end

  def create
    @dealer = Dealer.create(params)
    render json: @dealer
  end
  
end
