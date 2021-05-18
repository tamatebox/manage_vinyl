class AddLabelToVinyls < ActiveRecord::Migration[6.1]
  def change
    add_column :vinyls, :label, :string
  end
end
