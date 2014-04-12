require 'test_helper'

class StudentCardsControllerTest < ActionController::TestCase
  setup do
    @student_card = student_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_card" do
    assert_difference('StudentCard.count') do
      post :create, student_card: { assignment_one: @student_card.assignment_one, assignment_two: @student_card.assignment_two, attendance: @student_card.attendance, attended_cell: @student_card.attended_cell, attended_church: @student_card.attended_church, bible_reading: @student_card.bible_reading, days_journaled: @student_card.days_journaled, days_prayed: @student_card.days_prayed, memory_verse: @student_card.memory_verse, test: @student_card.test }
    end

    assert_redirected_to student_card_path(assigns(:student_card))
  end

  test "should show student_card" do
    get :show, id: @student_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_card
    assert_response :success
  end

  test "should update student_card" do
    put :update, id: @student_card, student_card: { assignment_one: @student_card.assignment_one, assignment_two: @student_card.assignment_two, attendance: @student_card.attendance, attended_cell: @student_card.attended_cell, attended_church: @student_card.attended_church, bible_reading: @student_card.bible_reading, days_journaled: @student_card.days_journaled, days_prayed: @student_card.days_prayed, memory_verse: @student_card.memory_verse, test: @student_card.test }
    assert_redirected_to student_card_path(assigns(:student_card))
  end

  test "should destroy student_card" do
    assert_difference('StudentCard.count', -1) do
      delete :destroy, id: @student_card
    end

    assert_redirected_to student_cards_path
  end
end
