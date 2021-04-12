class Guest < ApplicationRecord
    has_many :rounds
    serialize :rounds, Array
    validates_presence_of :name
    validates_presence_of :won_games, default: 0
    validates_presence_of :lost_games, default: 0
    validates_presence_of :balance
    validates_presence_of :total_played, numericality: true, default: 0
end
