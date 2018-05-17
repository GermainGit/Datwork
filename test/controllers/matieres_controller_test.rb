require 'test_helper'

class MatieresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matieres_index_url
    assert_response :success
  end

  test "should get new" do
    get matieres_new_url
    assert_response :success
  end

  test "should get create" do
    get matieres_create_url
    assert_response :success
  end

  test "should get show" do
    get matieres_show_url
    assert_response :success
  end

  test "should get edit" do
    get matieres_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get matieres_destroy_url
    assert_response :success
  end

  test "should get update" do
    get matieres_update_url
    assert_response :success
  end

end
