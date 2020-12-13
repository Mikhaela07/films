require 'test_helper'

class PremieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premiere = premieres(:one)
  end

  test "should get index" do
    get premieres_url
    assert_response :success
  end

  test "should get new" do
    get new_premiere_url
    assert_response :success
  end

  test "should create premiere" do
    assert_difference('Premiere.count') do
      post premieres_url, params: { premiere: { budget: @premiere.budget, date: @premiere.date } }
    end

    assert_redirected_to premiere_url(Premiere.last)
  end

  test "should show premiere" do
    get premiere_url(@premiere)
    assert_response :success
  end

  test "should get edit" do
    get edit_premiere_url(@premiere)
    assert_response :success
  end

  test "should update premiere" do
    patch premiere_url(@premiere), params: { premiere: { budget: @premiere.budget, date: @premiere.date } }
    assert_redirected_to premiere_url(@premiere)
  end

  test "should destroy premiere" do
    assert_difference('Premiere.count', -1) do
      delete premiere_url(@premiere)
    end

    assert_redirected_to premieres_url
  end
end
