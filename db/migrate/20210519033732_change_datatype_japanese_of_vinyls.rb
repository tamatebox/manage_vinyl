class ChangeDatatypeJapaneseOfVinyls < ActiveRecord::Migration[6.1]
  def change
    change_column :vinyls, :japanese, 'boolean'
  end
end
