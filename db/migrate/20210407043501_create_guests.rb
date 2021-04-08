class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.integer :balance
      t.integer :won_games
      t.integer :lost_games
      t.integer :total_played
      t.timestamps
    end
  end
end
