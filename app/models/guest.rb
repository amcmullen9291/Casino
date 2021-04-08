class Guest < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :balance, :numericality => { :greater_than_or_equal_to => 0 }, default: 300.00
    validates_presence_of :games_played, numericality: true, default: 0
    has_many: rounds 
    has_one :dealer, through: :round 
    has_many :cards, through: :round 
end
