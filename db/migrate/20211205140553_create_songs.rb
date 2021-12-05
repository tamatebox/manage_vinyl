class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :name, :null => false
      t.bigint :vinylID, :null => false
      t.integer :bpm

      t.timestamps
    end
  end
end
