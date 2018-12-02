class CreateCollectives < ActiveRecord::Migration[5.2]
  def change
    create_table :collectives do |t|
      t.string :name
      t.date :created
      t.date :broke_up
      t.text :bio
      t.string :style

      t.timestamps
    end
  end
end
