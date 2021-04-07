class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.integer :guest_bet 
      t.integer :previousCard_value
      t.integer :currentCard_value 
      t.integer :usedCards, array: true, default: []
      t.integer :availableCards, array: true
      t.timestamps
    end
  end
end
