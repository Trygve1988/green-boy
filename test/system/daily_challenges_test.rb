require "application_system_test_case"

class DailyChallengesTest < ApplicationSystemTestCase
  setup do
    @daily_challenge = daily_challenges(:one)
  end

  test "visiting the index" do
    visit daily_challenges_url
    assert_selector "h1", text: "Daily challenges"
  end

  test "should create daily challenge" do
    visit daily_challenges_url
    click_on "New daily challenge"

    fill_in "Total score", with: @daily_challenge.total_score
    fill_in "User", with: @daily_challenge.user_id
    click_on "Create Daily challenge"

    assert_text "Daily challenge was successfully created"
    click_on "Back"
  end

  test "should update Daily challenge" do
    visit daily_challenge_url(@daily_challenge)
    click_on "Edit this daily challenge", match: :first

    fill_in "Total score", with: @daily_challenge.total_score
    fill_in "User", with: @daily_challenge.user_id
    click_on "Update Daily challenge"

    assert_text "Daily challenge was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily challenge" do
    visit daily_challenge_url(@daily_challenge)
    click_on "Destroy this daily challenge", match: :first

    assert_text "Daily challenge was successfully destroyed"
  end
end
