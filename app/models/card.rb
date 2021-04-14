class Card < ApplicationRecord
    validates_presence_of :suit 
    validates_presence_of :value
    validates_presence_of :card_number, uniqueness: true
    has_one_attached :avatar
    # has_attached_file :avatar, styles: {medium: "300x300", thumb: "100x100>" }
    validates_attachment :avatar, presence: true
    do_not_validate_attachment_file_type :avatar
end
