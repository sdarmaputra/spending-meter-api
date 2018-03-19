require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_url
    assert_response :success
  end

  test "should get docs" do
    get api_docs_url
    assert_response :success
  end

end
