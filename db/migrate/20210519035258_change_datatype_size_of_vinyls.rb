class ChangeDatatypeSizeOfVinyls < ActiveRecord::Migration[6.1]
  def change
    change_column :vinyls, :size, 'integer'
  end
end
