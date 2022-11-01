require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase

  setup do
    @list = lists(:one)
    @list2 = lists(:two)
    @task = tasks(:one)
    @task2 = tasks(:two)
  end

  test "creating a new task" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list.title
    assert_selector "h1", text: @list.title

    fill_in "task_title", with: "My Test Task"
    click_on "Create Task"

    assert_selector "h1", text: @list.title
    assert_text "My Test Task"
  end

  test "showing a task" do
    visit lists_url
    click_link @list.title
    assert_selector "h1", text: @list.title
    assert_text @task.title
  end

  test "editing a task title" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list.title
    assert_selector "h1", text: @list.title

    click_on "Edit", exact:true, match: :first
    assert_selector "h1", text: "Edit Task"

    fill_in "task_title", with: "My Updated Task"
    click_on "Update Task"

    assert_selector "h1", text: @list.title
    assert_text "My Updated Task"
  end

  test "checking a task" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list.title
    assert_selector "h1", text: @list.title

    click_on "Check", match: :first
    assert_selector "h1", text: @list.title
    assert_text "[X] #{@task.title}"
  end

  test "unchecking a task" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list2.title
    assert_selector "h1", text: @list2.title

    click_on "Uncheck", match: :first
    assert_selector "h1", text: @list2.title
    assert_text "[ ] #{@task2.title}"
  end

  test "destroying a task" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list.title
    assert_selector "h1", text: @list.title

    click_on "Delete", match: :first

    assert_selector "h1", text: @list.title
    assert_no_text @task.title
  end

end
