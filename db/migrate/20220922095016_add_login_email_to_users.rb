class AddLoginEmailToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :login_email, :string
  end
end
