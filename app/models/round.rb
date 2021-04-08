class Round < ApplicationRecord
    validates_presence_of :availableCards
    has_many :cards 
    belongs_to :user
end
