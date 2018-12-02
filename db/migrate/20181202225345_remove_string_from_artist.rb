class RemoveStringFromArtist < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :string, :string
  end
end
