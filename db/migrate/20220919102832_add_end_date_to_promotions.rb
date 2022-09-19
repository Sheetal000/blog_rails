class AddEndDateToPromotions < ActiveRecord::Migration[7.0]
  def change
    unless ActiveRecord::Base.connection.column_exists?(:promotions, :end_date)
      add_column :promotions, :end_date, :datetime
    end
  end
end
