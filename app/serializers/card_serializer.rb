class CardSerializer
  include FastJsonapi::ObjectSerializer
  include Rails.application.routes.url_helpers
  attributes :card_number, :suit, :value, :image_url, :draw

  def draw
    object.draw
  end

  def restartPlay 
    object.restartPlay
  end 

end
