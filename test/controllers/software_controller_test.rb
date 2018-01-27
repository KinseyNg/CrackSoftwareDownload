require 'test_helper'

class SoftwareControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

  test "should get wait" do
    get :wait
    assert_response :success
  end

  test "should get back" do
    get :back
    assert_response :success
  end

  test "should get email" do
    get :email
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

  test "should get contect" do
    get :contect
    assert_response :success
  end

end
