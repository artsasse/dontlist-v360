require "application_system_test_case"

class ListsTest < ApplicationSystemTestCase
  setup do
    @list = lists(:one) # first list in fixtures
  end

  test "creating a new list" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_on "Create New List"
    assert_selector "h1", text: "New List"

    fill_in "Title", with: "My Test List"
    click_on "Create List"

    assert_selector "h1", text: "My Test List"
  end

  test "showing a list" do
    visit lists_url
    click_link @list.title

    assert_selector "h1", text: @list.title
  end

  test "updating a list" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list.title
    assert_selector "h1", text: @list.title

    click_on "Edit Title"
    assert_selector "h1", text: "Edit List"

    fill_in "Title", with: "My Updated List"
    click_on "Update List"

    assert_selector "h1", text: "My Updated List"
  end

  test "destroying a list" do
    visit lists_url
    assert_selector "h1", text: "Lists"

    click_link @list.title
    assert_selector "h1", text: @list.title
    
    accept_confirm do
      click_on "Delete List"
    end

    assert_selector "h1", text: "Lists"
    assert_no_text @list.title
  end


end
