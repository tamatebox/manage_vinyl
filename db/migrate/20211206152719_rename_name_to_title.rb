class RenameNameToTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :songs, :name, :title
  end
end
