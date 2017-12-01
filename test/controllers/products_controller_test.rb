require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "cant delete product in cart" do
    assert_difference('Product.count', 0) 
    delete product_url(products(:two))
  end

  assert_redirected_to products_update_url
end

  test "should destroy project" do
    assert_difference('Product.count', -1) 
    delete product_url(@product)
  end

  assert_redirected_to products_update_url
end

  test "should get new" do
    get products_new_url
    assert_response :success
  end

  test "should get create" do
    get products_create_url
    assert_response :success
  end

  test "should get edit" do
    get products_edit_url
    assert_response :success
  end

  test "should get update" do
    get products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get products_destroy_url
    assert_response :success
  end

end
