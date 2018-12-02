class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.integer :artist_id
      t.integer :collective_id

      t.timestamps
    end
  end
end
