class CreateGuests < ActiveRecord::Migration[6.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.decimal :balance, precision: 8, scale: 2
      t.integer :won_games, default: 0
      t.integer :lost_games, default: 0
      t.integer :total_played, default: 0
      t.timestamps
    end
  end
end
