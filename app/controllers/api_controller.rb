class ApiController < ActionController::Base
  def index
	  render json: { message: 'Welcome to SpendingMeter v1.0.0' }
  end

  def docs
  end
end
