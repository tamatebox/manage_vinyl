class RenameJapaneseToCountry < ActiveRecord::Migration[6.1]
  def change
    rename_column :vinyls, :japanese, :country
  end
end
