require 'test_helper'

class UserClicksControllerTest < ActionController::TestCase
  setup do
    @user_click = user_clicks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_clicks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_click" do
    assert_difference('UserClick.count') do
      post :create, user_click: { field: @user_click.field, user_id: @user_click.user_id }
    end

    assert_redirected_to user_click_path(assigns(:user_click))
  end

  test "should show user_click" do
    get :show, id: @user_click
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_click
    assert_response :success
  end

  test "should update user_click" do
    patch :update, id: @user_click, user_click: { field: @user_click.field, user_id: @user_click.user_id }
    assert_redirected_to user_click_path(assigns(:user_click))
  end

  test "should destroy user_click" do
    assert_difference('UserClick.count', -1) do
      delete :destroy, id: @user_click
    end

    assert_redirected_to user_clicks_path
  end
end
