class AddCompilationToVinyls < ActiveRecord::Migration[6.1]
  def change
    add_column :vinyls, :compilation, :boolean
  end
end
