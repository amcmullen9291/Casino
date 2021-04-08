class CardSerializer
  include FastJsonapi::ObjectSerializer
  attributes :card_number, :suit, :value 
end
