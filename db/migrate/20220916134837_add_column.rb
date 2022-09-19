class AddColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :integer
    change_column :products, :price2, :integer
  end
end
