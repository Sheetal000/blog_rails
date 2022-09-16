class AddFieldProduct < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :name
  end
end
