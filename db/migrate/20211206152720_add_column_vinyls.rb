class AddColumnVinyls < ActiveRecord::Migration[6.1]
  def change
    add_column :vinyls, :spotify, :string
    add_column :vinyls, :catalog, :string
  end
end
