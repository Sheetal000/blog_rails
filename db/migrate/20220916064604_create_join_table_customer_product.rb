class CreateJoinTableCustomerProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :phone_number
      t.timestamps
    end
    
    create_join_table :customers, :products do |t|
      t.index [:customer_id, :product_id]
      t.index [:product_id, :customer_id]
    end
  end
end
