class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :string
      t.date :born
      t.date :died
      t.string :image
      t.text :bio
      t.string :style
      t.integer :gallery_id

      t.timestamps
    end
  end
end
