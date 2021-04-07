class AddStatusToRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :outcome, :string
  end
end
