class Admin < ApplicationRecord
  validates :email,uniqueness:true, on: :account_setup
  validates :age ,numericality:true,on: :account_setup
  validates :name,presence: true
end
