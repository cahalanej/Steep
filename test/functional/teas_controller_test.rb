require 'test_helper'

class TeasControllerTest < ActionController::TestCase
  setup do
    @tea = teas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tea" do
    assert_difference('Tea.count') do
      post :create, tea: @tea.attributes
    end

    assert_redirected_to tea_path(assigns(:tea))
  end

  test "should show tea" do
    get :show, id: @tea
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tea
    assert_response :success
  end

  test "should update tea" do
    put :update, id: @tea, tea: @tea.attributes
    assert_redirected_to tea_path(assigns(:tea))
  end

  test "should destroy tea" do
    assert_difference('Tea.count', -1) do
      delete :destroy, id: @tea
    end

    assert_redirected_to teas_path
  end
end
