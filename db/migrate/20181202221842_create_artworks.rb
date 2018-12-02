class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.date :year
      t.string :image
      t.boolean :blocked
      t.string :artist_id
      t.string :integer

      t.timestamps
    end
  end
end
