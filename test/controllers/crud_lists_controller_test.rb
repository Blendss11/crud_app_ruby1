require "test_helper"

class CrudListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crud_list = crud_lists(:one)
  end

  test "should get index" do
    get crud_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_crud_list_url
    assert_response :success
  end

  test "should create crud_list" do
    assert_difference("CrudList.count") do
      post crud_lists_url, params: { crud_list: { email: @crud_list.email, first_name: @crud_list.first_name, last_name: @crud_list.last_name, phone: @crud_list.phone, twitter: @crud_list.twitter } }
    end

    assert_redirected_to crud_list_url(CrudList.last)
  end

  test "should show crud_list" do
    get crud_list_url(@crud_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_crud_list_url(@crud_list)
    assert_response :success
  end

  test "should update crud_list" do
    patch crud_list_url(@crud_list), params: { crud_list: { email: @crud_list.email, first_name: @crud_list.first_name, last_name: @crud_list.last_name, phone: @crud_list.phone, twitter: @crud_list.twitter } }
    assert_redirected_to crud_list_url(@crud_list)
  end

  test "should destroy crud_list" do
    assert_difference("CrudList.count", -1) do
      delete crud_list_url(@crud_list)
    end

    assert_redirected_to crud_lists_url
  end
end
