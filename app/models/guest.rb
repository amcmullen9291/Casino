class Guest < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :balance, numericality: true, default: 300.00
    validates_presence_of :games_played, numericality: true, default: 0
    has_many: rounds 
end
