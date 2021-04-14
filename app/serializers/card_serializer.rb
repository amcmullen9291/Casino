class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :card_number, :suit, :value, :image_url, :avatar
end
