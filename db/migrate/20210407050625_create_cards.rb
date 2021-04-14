class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.integer :card_number
      t.string :suit
      t.integer :value
      t.string :image_url
      t.timestamps
    end
  end
end
