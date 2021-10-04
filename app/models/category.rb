class Category < ApplicationRecord
    self.table_name = "category"
    self.primary_key = 'id'

    has_many :products
end
