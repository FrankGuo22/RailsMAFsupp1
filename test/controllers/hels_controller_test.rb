require 'test_helper'

class HelsControllerTest < ActionController::TestCase
  setup do
    @hel = hels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hel" do
    assert_difference('Hel.count') do
      post :create, hel: {  }
    end

    assert_redirected_to hel_path(assigns(:hel))
  end

  test "should show hel" do
    get :show, id: @hel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hel
    assert_response :success
  end

  test "should update hel" do
    patch :update, id: @hel, hel: {  }
    assert_redirected_to hel_path(assigns(:hel))
  end

  test "should destroy hel" do
    assert_difference('Hel.count', -1) do
      delete :destroy, id: @hel
    end

    assert_redirected_to hels_path
  end
end
