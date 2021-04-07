class CreateDealers < ActiveRecord::Migration[6.1]
  def change
    create_table :dealers do |t|
      t.string :name

      t.timestamps
    end
  end
end
