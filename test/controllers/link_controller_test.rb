require 'test_helper'

class LinkControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get course" do
    get :course
    assert_response :success
  end

  test "should get lecturer" do
    get :lecturer
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
