class CreateCoffees < ActiveRecord::Migration[7.0]
  def change
    create_table :coffees do |t|
      t.integer  :size
      t.timestamps
    end
  end
end
