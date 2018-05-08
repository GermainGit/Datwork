require 'test_helper'

class DevoirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devoir = devoirs(:one)
  end

  test "should get index" do
    get devoirs_url
    assert_response :success
  end

  test "should get new" do
    get new_devoir_url
    assert_response :success
  end

  test "should create devoir" do
    assert_difference('Devoir.count') do
      post devoirs_url, params: { devoir: { date: @devoir.date, description: @devoir.description, etat: @devoir.etat, matiere_id: @devoir.matiere_id } }
    end

    assert_redirected_to devoir_url(Devoir.last)
  end

  test "should show devoir" do
    get devoir_url(@devoir)
    assert_response :success
  end

  test "should get edit" do
    get edit_devoir_url(@devoir)
    assert_response :success
  end

  test "should update devoir" do
    patch devoir_url(@devoir), params: { devoir: { date: @devoir.date, description: @devoir.description, etat: @devoir.etat, matiere_id: @devoir.matiere_id } }
    assert_redirected_to devoir_url(@devoir)
  end

  test "should destroy devoir" do
    assert_difference('Devoir.count', -1) do
      delete devoir_url(@devoir)
    end

    assert_redirected_to devoirs_url
  end
end
