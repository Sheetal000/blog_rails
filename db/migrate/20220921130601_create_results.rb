class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.string :token
      t.timestamps
    end
  end
end
