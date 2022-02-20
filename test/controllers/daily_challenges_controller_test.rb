require "test_helper"

class DailyChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_challenge = daily_challenges(:one)
  end

  test "should get index" do
    get daily_challenges_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_challenge_url
    assert_response :success
  end

  test "should create daily_challenge" do
    assert_difference("DailyChallenge.count") do
      post daily_challenges_url, params: { daily_challenge: { total_score: @daily_challenge.total_score, user_id: @daily_challenge.user_id } }
    end

    assert_redirected_to daily_challenge_url(DailyChallenge.last)
  end

  test "should show daily_challenge" do
    get daily_challenge_url(@daily_challenge)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_challenge_url(@daily_challenge)
    assert_response :success
  end

  test "should update daily_challenge" do
    patch daily_challenge_url(@daily_challenge), params: { daily_challenge: { total_score: @daily_challenge.total_score, user_id: @daily_challenge.user_id } }
    assert_redirected_to daily_challenge_url(@daily_challenge)
  end

  test "should destroy daily_challenge" do
    assert_difference("DailyChallenge.count", -1) do
      delete daily_challenge_url(@daily_challenge)
    end

    assert_redirected_to daily_challenges_url
  end
end
