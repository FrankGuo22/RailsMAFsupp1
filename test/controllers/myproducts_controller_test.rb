require 'test_helper'

class MyproductsControllerTest < ActionController::TestCase
  setup do
    @myproduct = myproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myproduct" do
    assert_difference('Myproduct.count') do
      post :create, myproduct: { bottle_size: @myproduct.bottle_size, company: @myproduct.company, country: @myproduct.country, description: @myproduct.description, grape_type: @myproduct.grape_type, image_url: @myproduct.image_url, price: @myproduct.price, suit_vegetarian: @myproduct.suit_vegetarian, title: @myproduct.title }
    end

    assert_redirected_to myproduct_path(assigns(:myproduct))
  end

  test "should show myproduct" do
    get :show, id: @myproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myproduct
    assert_response :success
  end

  test "should update myproduct" do
    patch :update, id: @myproduct, myproduct: { bottle_size: @myproduct.bottle_size, company: @myproduct.company, country: @myproduct.country, description: @myproduct.description, grape_type: @myproduct.grape_type, image_url: @myproduct.image_url, price: @myproduct.price, suit_vegetarian: @myproduct.suit_vegetarian, title: @myproduct.title }
    assert_redirected_to myproduct_path(assigns(:myproduct))
  end

  test "should destroy myproduct" do
    assert_difference('Myproduct.count', -1) do
      delete :destroy, id: @myproduct
    end

    assert_redirected_to myproducts_path
  end
end
