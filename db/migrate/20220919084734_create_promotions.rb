class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.integer  :start_date
      t.timestamps
    end
  end
end
