class RemoveImageFromArtwork < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :image, :string
  end
end
