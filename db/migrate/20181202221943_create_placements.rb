class CreatePlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :placements do |t|
      t.string :artwork_id
      t.string :gallery_id
      t.integer :order

      t.timestamps
    end
  end
end
