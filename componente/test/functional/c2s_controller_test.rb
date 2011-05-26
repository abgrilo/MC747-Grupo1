require 'test_helper'

class C2sControllerTest < ActionController::TestCase
  setup do
    @c2 = c2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c2" do
    assert_difference('C2.count') do
      post :create, :c2 => @c2.attributes
    end

    assert_redirected_to c2_path(assigns(:c2))
  end

  test "should show c2" do
    get :show, :id => @c2.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @c2.to_param
    assert_response :success
  end

  test "should update c2" do
    put :update, :id => @c2.to_param, :c2 => @c2.attributes
    assert_redirected_to c2_path(assigns(:c2))
  end

  test "should destroy c2" do
    assert_difference('C2.count', -1) do
      delete :destroy, :id => @c2.to_param
    end

    assert_redirected_to c2s_path
  end
end
