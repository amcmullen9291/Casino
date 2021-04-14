class CardSerializer
  include FastJsonapi::ObjectSerializer
  include Rails.application.routes.url_helpers
  attributes :card_number, :suit, :value, :image_url, :avatar

  def avatar
    rails_blob_path(card.avatar, only_path: true) if card.avatar.attached?
  end
end
