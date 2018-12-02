class CreateAnnotations < ActiveRecord::Migration[5.2]
  def change
    create_table :annotations do |t|
      t.text :body
      t.integer :user_id
      t.integer :gallery_id
      t.integer :order

      t.timestamps
    end
  end
end
