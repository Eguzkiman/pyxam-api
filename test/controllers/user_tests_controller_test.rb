require 'test_helper'

class UserTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_test = user_tests(:one)
  end

  test "should get index" do
    get user_tests_url, as: :json
    assert_response :success
  end

  test "should create user_test" do
    assert_difference('UserTest.count') do
      post user_tests_url, params: { user_test: { score: @user_test.score, test_id: @user_test.test_id, user_id: @user_test.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_test" do
    get user_test_url(@user_test), as: :json
    assert_response :success
  end

  test "should update user_test" do
    patch user_test_url(@user_test), params: { user_test: { score: @user_test.score, test_id: @user_test.test_id, user_id: @user_test.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_test" do
    assert_difference('UserTest.count', -1) do
      delete user_test_url(@user_test), as: :json
    end

    assert_response 204
  end
end
