class AddGamesPlayedColumnToGuests < ActiveRecord::Migration[6.1]
  def change
    add_column :guests, :gamesPlayed, :integer
  end
end
