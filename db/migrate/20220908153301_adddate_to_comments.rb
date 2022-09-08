class AdddateToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :date, :datetime
  end
end
