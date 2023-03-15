require "test_helper"

class StatementsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get statements_index_url
    assert_response :success
  end

  test "should get show" do
    get statements_show_url
    assert_response :success
  end

  test "should get create" do
    get statements_create_url
    assert_response :success
  end

  test "should get new" do
    get statements_new_url
    assert_response :success
  end

  test "should get update" do
    get statements_update_url
    assert_response :success
  end

  test "should get edit" do
    get statements_edit_url
    assert_response :success
  end

  test "should get delete" do
    get statements_delete_url
    assert_response :success
  end
end
