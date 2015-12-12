require 'test_helper'

class JobPartsControllerTest < ActionController::TestCase
  setup do
    @job_part = job_parts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_parts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_part" do
    assert_difference('JobPart.count') do
      post :create, job_part: { job_id: @job_part.job_id, part_id: @job_part.part_id, quantity: @job_part.quantity }
    end

    assert_redirected_to job_part_path(assigns(:job_part))
  end

  test "should show job_part" do
    get :show, id: @job_part
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_part
    assert_response :success
  end

  test "should update job_part" do
    patch :update, id: @job_part, job_part: { job_id: @job_part.job_id, part_id: @job_part.part_id, quantity: @job_part.quantity }
    assert_redirected_to job_part_path(assigns(:job_part))
  end

  test "should destroy job_part" do
    assert_difference('JobPart.count', -1) do
      delete :destroy, id: @job_part
    end

    assert_redirected_to job_parts_path
  end
end
