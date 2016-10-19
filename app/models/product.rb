class Product < ApplicationRecord
  belongs_to :company
  belongs_to :category
  belongs_to :subcategory
end
