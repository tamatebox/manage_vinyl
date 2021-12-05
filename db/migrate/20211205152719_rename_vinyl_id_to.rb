class RenameVinylIdTo < ActiveRecord::Migration[6.1]
  def change
    rename_column :songs, :vinylID, :vinyl_id
  end
end
