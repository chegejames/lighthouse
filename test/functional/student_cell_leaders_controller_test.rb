require 'test_helper'

class StudentCellLeadersControllerTest < ActionController::TestCase
  setup do
    @student_cell_leader = student_cell_leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_cell_leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_cell_leader" do
    assert_difference('StudentCellLeader.count') do
      post :create, student_cell_leader: { date: @student_cell_leader.date }
    end

    assert_redirected_to student_cell_leader_path(assigns(:student_cell_leader))
  end

  test "should show student_cell_leader" do
    get :show, id: @student_cell_leader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_cell_leader
    assert_response :success
  end

  test "should update student_cell_leader" do
    put :update, id: @student_cell_leader, student_cell_leader: { date: @student_cell_leader.date }
    assert_redirected_to student_cell_leader_path(assigns(:student_cell_leader))
  end

  test "should destroy student_cell_leader" do
    assert_difference('StudentCellLeader.count', -1) do
      delete :destroy, id: @student_cell_leader
    end

    assert_redirected_to student_cell_leaders_path
  end
end
