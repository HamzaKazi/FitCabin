class RemoveCaloriesFromFoods < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :calories
  end
end
