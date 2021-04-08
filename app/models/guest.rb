class Guest < ApplicationRecord
    has_many :rounds, array: true, default []
    validates_presence_of :name
    validates_presence_of :balance, :numericality => { :greater_than_or_equal_to => 0 }, default: 300.00
    validates_presence_of :total_played, numericality: true, default: 0
end
