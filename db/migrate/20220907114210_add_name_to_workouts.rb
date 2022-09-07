class AddNameToWorkouts < ActiveRecord::Migration[7.0]
  def change
    add_column :workouts, :name, :string
  end
end
