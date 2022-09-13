class Product < ApplicationRecord
    self.table_name = "products"
    self.primary_key ="product_id"
end
