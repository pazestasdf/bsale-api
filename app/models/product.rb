class Product < ApplicationRecord
    self.table_name = "product"
    self.primary_key = 'id'

    belongs_to :category, foreign_key: :category
end
