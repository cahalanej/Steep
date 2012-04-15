require 'test_helper'

class TeaTypesControllerTest < ActionController::TestCase
  setup do
    @tea_type = tea_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tea_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tea_type" do
    assert_difference('TeaType.count') do
      post :create, tea_type: @tea_type.attributes
    end

    assert_redirected_to tea_type_path(assigns(:tea_type))
  end

  test "should show tea_type" do
    get :show, id: @tea_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tea_type
    assert_response :success
  end

  test "should update tea_type" do
    put :update, id: @tea_type, tea_type: @tea_type.attributes
    assert_redirected_to tea_type_path(assigns(:tea_type))
  end

  test "should destroy tea_type" do
    assert_difference('TeaType.count', -1) do
      delete :destroy, id: @tea_type
    end

    assert_redirected_to tea_types_path
  end
end
