class Dealer < ApplicationRecord
    validates_presence_of :name
    belongs_to :round
end
