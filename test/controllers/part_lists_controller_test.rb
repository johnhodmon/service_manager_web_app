require 'test_helper'

class PartListsControllerTest < ActionController::TestCase
  setup do
    @part_list = part_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_list" do
    assert_difference('PartList.count') do
      post :create, part_list: { part_id: @part_list.part_id, product_id: @part_list.product_id, quantity: @part_list.quantity }
    end

    assert_redirected_to part_list_path(assigns(:part_list))
  end

  test "should show part_list" do
    get :show, id: @part_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_list
    assert_response :success
  end

  test "should update part_list" do
    patch :update, id: @part_list, part_list: { part_id: @part_list.part_id, product_id: @part_list.product_id, quantity: @part_list.quantity }
    assert_redirected_to part_list_path(assigns(:part_list))
  end

  test "should destroy part_list" do
    assert_difference('PartList.count', -1) do
      delete :destroy, id: @part_list
    end

    assert_redirected_to part_lists_path
  end
end
