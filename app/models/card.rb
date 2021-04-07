class Card < ApplicationRecord
    validates_presence_of :suit 
    validates_presence_of :value  

end
