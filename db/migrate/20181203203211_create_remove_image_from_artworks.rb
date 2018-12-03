class CreateRemoveImageFromArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :remove_image_from_artworks do |t|

      t.timestamps
    end
  end
end
