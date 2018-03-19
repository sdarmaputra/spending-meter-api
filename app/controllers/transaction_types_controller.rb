class TransactionTypesController < ApplicationController
  def index
	  @transactionTypes = TransactionType.all

	  render json: @transactionTypes
  end

  def show
	  @TransactionType = TransactionType.find(params[:id])

	  render json: @TransactionType
  end
end
