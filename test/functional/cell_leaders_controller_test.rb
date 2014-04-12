require 'test_helper'

class CellLeadersControllerTest < ActionController::TestCase
  setup do
    @cell_leader = cell_leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cell_leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cell_leader" do
    assert_difference('CellLeader.count') do
      post :create, cell_leader: { email: @cell_leader.email, mobile: @cell_leader.mobile, name: @cell_leader.name }
    end

    assert_redirected_to cell_leader_path(assigns(:cell_leader))
  end

  test "should show cell_leader" do
    get :show, id: @cell_leader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cell_leader
    assert_response :success
  end

  test "should update cell_leader" do
    put :update, id: @cell_leader, cell_leader: { email: @cell_leader.email, mobile: @cell_leader.mobile, name: @cell_leader.name }
    assert_redirected_to cell_leader_path(assigns(:cell_leader))
  end

  test "should destroy cell_leader" do
    assert_difference('CellLeader.count', -1) do
      delete :destroy, id: @cell_leader
    end

    assert_redirected_to cell_leaders_path
  end
end
