class AddGuestIdToRounds < ActiveRecord::Migration[6.1]
  def change
    add_column :rounds, :guest_id, :integer
  end
end
