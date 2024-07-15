require "application_system_test_case"

class CrudListsTest < ApplicationSystemTestCase
  setup do
    @crud_list = crud_lists(:one)
  end

  test "visiting the index" do
    visit crud_lists_url
    assert_selector "h1", text: "Crud lists"
  end

  test "should create crud list" do
    visit crud_lists_url
    click_on "New crud list"

    fill_in "Email", with: @crud_list.email
    fill_in "First name", with: @crud_list.first_name
    fill_in "Last name", with: @crud_list.last_name
    fill_in "Phone", with: @crud_list.phone
    fill_in "Twitter", with: @crud_list.twitter
    click_on "Create Crud list"

    assert_text "Crud list was successfully created"
    click_on "Back"
  end

  test "should update Crud list" do
    visit crud_list_url(@crud_list)
    click_on "Edit this crud list", match: :first

    fill_in "Email", with: @crud_list.email
    fill_in "First name", with: @crud_list.first_name
    fill_in "Last name", with: @crud_list.last_name
    fill_in "Phone", with: @crud_list.phone
    fill_in "Twitter", with: @crud_list.twitter
    click_on "Update Crud list"

    assert_text "Crud list was successfully updated"
    click_on "Back"
  end

  test "should destroy Crud list" do
    visit crud_list_url(@crud_list)
    click_on "Destroy this crud list", match: :first

    assert_text "Crud list was successfully destroyed"
  end
end
