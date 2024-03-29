require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get by_name" do
    get :by_name
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
