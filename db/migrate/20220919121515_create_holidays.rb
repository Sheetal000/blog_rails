class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
     t.string :name
     t.datetime :scop, :year
    t.timestamps
    end
  end
end
