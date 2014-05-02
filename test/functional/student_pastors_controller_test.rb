require 'test_helper'

class StudentPastorsControllerTest < ActionController::TestCase
  setup do
    @student_pastor = student_pastors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_pastors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_pastor" do
    assert_difference('StudentPastor.count') do
      post :create, student_pastor: { date: @student_pastor.date }
    end

    assert_redirected_to student_pastor_path(assigns(:student_pastor))
  end

  test "should show student_pastor" do
    get :show, id: @student_pastor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_pastor
    assert_response :success
  end

  test "should update student_pastor" do
    put :update, id: @student_pastor, student_pastor: { date: @student_pastor.date }
    assert_redirected_to student_pastor_path(assigns(:student_pastor))
  end

  test "should destroy student_pastor" do
    assert_difference('StudentPastor.count', -1) do
      delete :destroy, id: @student_pastor
    end

    assert_redirected_to student_pastors_path
  end
end
