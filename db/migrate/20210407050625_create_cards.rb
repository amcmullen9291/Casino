class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :suit
      t.integer :value
      t.integer :card_number

      t.timestamps
    end
  end
end
