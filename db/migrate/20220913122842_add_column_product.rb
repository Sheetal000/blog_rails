class AddColumnProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :products,:name, :string
    add_column :products,:price, :integer
    add_column :products,:color, :string
  end
end
