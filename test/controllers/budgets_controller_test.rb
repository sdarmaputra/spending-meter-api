require 'test_helper'

class BudgetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @budget = budgets(:one)
  end

  test "should get index" do
    get category_budgets_url(@budget.category), as: :json
    assert_response :success
  end

  test "should create budget" do
    assert_difference('Budget.count') do
      post category_budgets_url(@budget.category), params: { budget: { amount: @budget.amount, end_date: @budget.end_date, is_monthly: @budget.is_monthly, is_specific_date: @budget.is_specific_date, start_date: @budget.start_date } }, as: :json
    end

    assert_response 201
  end

  test "should show budget" do
    get category_budget_url(@budget.category, @budget), as: :json
    assert_response :success
  end

  test "should update budget" do
    patch category_budget_url(@budget.category, @budget), params: { budget: { amount: @budget.amount, end_date: @budget.end_date, is_monthly: @budget.is_monthly, is_specific_date: @budget.is_specific_date, start_date: @budget.start_date } }, as: :json
    assert_response 200
  end

  test "should destroy budget" do
    assert_difference('Budget.count', -1) do
      delete category_budget_url(@budget.category, @budget), as: :json
    end

    assert_response 204
  end
end
