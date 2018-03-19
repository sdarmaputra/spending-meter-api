require 'test_helper'

class TransactionTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get transaction_types_url
    assert_response :success
  end

  test "should get show" do
	@transcationType = transaction_types(:one)
    get transaction_type_url(@transcationType)
    assert_response :success
  end

end
