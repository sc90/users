require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact_details" do
    get :contact_details
    assert_response :success
  end

end
