class Guest < ApplicationRecord
    has_many :rounds
    serialize :rounds, Array
    validates_presence_of :name
    validates_presence_of :balance, default: 300.00
    validates_presence_of :total_played, numericality: true, default: 0
end
