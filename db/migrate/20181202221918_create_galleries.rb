class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :title
      t.boolean :blocked
      t.boolean :private
      t.integer :user_id

      t.timestamps
    end
  end
end
