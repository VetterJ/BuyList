require 'test_helper'

class EListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @e_list = e_lists(:one)
  end

  test "should get index" do
    get e_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_e_list_url
    assert_response :success
  end

  test "should create e_list" do
    assert_difference('EList.count') do
      post e_lists_url, params: { e_list: { Done: @e_list.Done, Menge: @e_list.Menge, Was?: @e_list.Was?, Wo?: @e_list.Wo? } }
    end

    assert_redirected_to e_list_url(EList.last)
  end

  test "should show e_list" do
    get e_list_url(@e_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_e_list_url(@e_list)
    assert_response :success
  end

  test "should update e_list" do
    patch e_list_url(@e_list), params: { e_list: { Done: @e_list.Done, Menge: @e_list.Menge, Was?: @e_list.Was?, Wo?: @e_list.Wo? } }
    assert_redirected_to e_list_url(@e_list)
  end

  test "should destroy e_list" do
    assert_difference('EList.count', -1) do
      delete e_list_url(@e_list)
    end

    assert_redirected_to e_lists_url
  end
end
