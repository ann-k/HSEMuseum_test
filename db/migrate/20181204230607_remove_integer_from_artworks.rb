class RemoveIntegerFromArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :integer, :string
  end
end
