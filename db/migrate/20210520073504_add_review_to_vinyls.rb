class AddReviewToVinyls < ActiveRecord::Migration[6.1]
  def change
    add_column :vinyls, :review, :string
  end
end
