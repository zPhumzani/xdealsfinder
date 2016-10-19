require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { available_quantity: @product.available_quantity, category_id: @product.category_id, company_id: @product.company_id, description: @product.description, expiry_date: @product.expiry_date, image: @product.image, latitude: @product.latitude, longitude: @product.longitude, name: @product.name, online_order_available: @product.online_order_available, price: @product.price, subcategory_id: @product.subcategory_id, tax_amount: @product.tax_amount, weight_in_grams: @product.weight_in_grams } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { available_quantity: @product.available_quantity, category_id: @product.category_id, company_id: @product.company_id, description: @product.description, expiry_date: @product.expiry_date, image: @product.image, latitude: @product.latitude, longitude: @product.longitude, name: @product.name, online_order_available: @product.online_order_available, price: @product.price, subcategory_id: @product.subcategory_id, tax_amount: @product.tax_amount, weight_in_grams: @product.weight_in_grams } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
