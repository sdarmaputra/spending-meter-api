class BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :update, :destroy]

  # GET /budgets
  def index
    @budgets = current_category.budgets.all

    render json: @budgets
  end

  # GET /budgets/1
  def show
    render json: @budget
  end

  # POST /budgets
  def create
    @budget = current_category.budgets.new(budget_params)

    if @budget.save
      render json: @budget, status: :created, location: category_budget_url(current_category, @budget)
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /budgets/1
  def update
    if @budget.update(budget_params)
      render json: @budget
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # DELETE /budgets/1
  def destroy
    @budget.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = current_category.budgets.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def budget_params
      params.require(:budget).permit(:amount, :is_monthly, :is_specific_date, :start_date, :end_date, :category_id)
    end

	def current_category
	  return Category.find(params[:category_id])
	end
end
