class AddLastNameToPerson < ActiveRecord::Migration[7.0]
  def change
    add_column :people, :last, :string
  end
end
