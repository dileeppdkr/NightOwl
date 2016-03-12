require 'test_helper'

class RattingsControllerTest < ActionController::TestCase
  setup do
    @ratting = rattings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rattings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ratting" do
    assert_difference('Ratting.count') do
      post :create, ratting: { ratting: @ratting.ratting, shop_id: @ratting.shop_id, user_id: @ratting.user_id }
    end

    assert_redirected_to ratting_path(assigns(:ratting))
  end

  test "should show ratting" do
    get :show, id: @ratting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ratting
    assert_response :success
  end

  test "should update ratting" do
    patch :update, id: @ratting, ratting: { ratting: @ratting.ratting, shop_id: @ratting.shop_id, user_id: @ratting.user_id }
    assert_redirected_to ratting_path(assigns(:ratting))
  end

  test "should destroy ratting" do
    assert_difference('Ratting.count', -1) do
      delete :destroy, id: @ratting
    end

    assert_redirected_to rattings_path
  end
end
