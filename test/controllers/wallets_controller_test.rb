require 'test_helper'

class WalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallet = wallets(:one)
	@currency = currencies(:one)
  end

  test "should get index" do
    get wallets_url, as: :json
    assert_response :success
  end

  test "should create wallet" do
    assert_difference('Wallet.count') do
      post wallets_url, params: { wallet: { name: @wallet.name, description: @wallet.description, currency_id: @currency.id } }, as: :json
    end

    assert_response 201
  end

  test "should show wallet" do
    get wallet_url(@wallet), as: :json
    assert_response :success
  end

  test "should update wallet" do
	@currency = currencies(:two)
    patch wallet_url(@wallet), params: { wallet: { name: @wallet.name, description: @wallet.description, currency_id: @currency.id } }, as: :json
    assert_response 200

	patch wallet_url(@wallet), params: { wallet: { name: @wallet.name, description: @wallet.description } }, as: :json
    assert_response 200

  end

  test "should destroy wallet" do
    assert_difference('Wallet.count', -1) do
      delete wallet_url(@wallet), as: :json
    end

    assert_response 204
  end
end
