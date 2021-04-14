class AddAttachmentAvatarToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :avatar, :attachment
  end

  def self.down
    remove_attachment :cards, :avatar
  end
end
