require 'test_helper'

class ContestsControllerTest < ActionController::TestCase
  setup do
    @contest = contests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contest" do
    assert_difference('Contest.count') do
      post :create, contest: { description: @contest.description, end_time: @contest.end_time, event_id: @contest.event_id, image_url: @contest.image_url, start_time: @contest.start_time, team_admin_id: @contest.team_admin_id, title: @contest.title }
    end

    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should show contest" do
    get :show, id: @contest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contest
    assert_response :success
  end

  test "should update contest" do
    put :update, id: @contest, contest: { description: @contest.description, end_time: @contest.end_time, event_id: @contest.event_id, image_url: @contest.image_url, start_time: @contest.start_time, team_admin_id: @contest.team_admin_id, title: @contest.title }
    assert_redirected_to contest_path(assigns(:contest))
  end

  test "should destroy contest" do
    assert_difference('Contest.count', -1) do
      delete :destroy, id: @contest
    end

    assert_redirected_to contests_path
  end
end
