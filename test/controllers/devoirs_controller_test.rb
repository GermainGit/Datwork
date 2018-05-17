require 'test_helper'

class DevoirsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get devoirs_index_url
    assert_response :success
  end

  test "should get new" do
    get devoirs_new_url
    assert_response :success
  end

  test "should get create" do
    get devoirs_create_url
    assert_response :success
  end

  test "should get show" do
    get devoirs_show_url
    assert_response :success
  end

  test "should get edit" do
    get devoirs_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get devoirs_destroy_url
    assert_response :success
  end

  test "should get update" do
    get devoirs_update_url
    assert_response :success
  end

end
