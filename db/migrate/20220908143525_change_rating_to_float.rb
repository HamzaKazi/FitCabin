class ChangeRatingToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :gyms, :rating, :float
  end
end
