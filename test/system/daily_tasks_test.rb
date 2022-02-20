require "application_system_test_case"

class DailyTasksTest < ApplicationSystemTestCase
  setup do
    @daily_task = daily_tasks(:one)
  end

  test "visiting the index" do
    visit daily_tasks_url
    assert_selector "h1", text: "Daily tasks"
  end

  test "should create daily task" do
    visit daily_tasks_url
    click_on "New daily task"

    fill_in "Daily challenge", with: @daily_task.daily_challenge_id
    fill_in "Task", with: @daily_task.task_id
    fill_in "Total score", with: @daily_task.total_score
    click_on "Create Daily task"

    assert_text "Daily task was successfully created"
    click_on "Back"
  end

  test "should update Daily task" do
    visit daily_task_url(@daily_task)
    click_on "Edit this daily task", match: :first

    fill_in "Daily challenge", with: @daily_task.daily_challenge_id
    fill_in "Task", with: @daily_task.task_id
    fill_in "Total score", with: @daily_task.total_score
    click_on "Update Daily task"

    assert_text "Daily task was successfully updated"
    click_on "Back"
  end

  test "should destroy Daily task" do
    visit daily_task_url(@daily_task)
    click_on "Destroy this daily task", match: :first

    assert_text "Daily task was successfully destroyed"
  end
end
