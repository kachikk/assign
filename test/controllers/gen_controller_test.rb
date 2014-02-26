require 'test_helper'

class GenControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get story" do
    get :story
    assert_response :success
  end

end
