class AddStarToVinyls < ActiveRecord::Migration[6.1]
  def change
    add_column :vinyls, :star, :integer
  end
end
