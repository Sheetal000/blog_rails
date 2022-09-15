class Product < ApplicationRecord
    # self.table_name = "products"
    # self.primary_key ="id"
    validates :name, presence: true

end
