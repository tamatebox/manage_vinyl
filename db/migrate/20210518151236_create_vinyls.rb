class CreateVinyls < ActiveRecord::Migration[6.1]
  def change
    create_table :vinyls do |t|
      t.string :artist
      t.string :album
      t.integer :year
      t.string :genre
      t.binary :japanese
      t.binary :size

      t.timestamps
    end
  end
end
