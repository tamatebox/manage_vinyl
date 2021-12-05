class AddColumnTrack < ActiveRecord::Migration[6.1]
  def change
    add_column :vinyls, :track, :integer
  end
end
