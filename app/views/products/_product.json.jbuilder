json.extract! product, :id, :company_id, :category_id, :subcategory_id, :name, :description, :weight_in_grams, :price, :available_quantity, :expiry_date, :latitude, :longitude, :online_order_available, :tax_amount, :image, :created_at, :updated_at
json.url product_url(product, format: :json)