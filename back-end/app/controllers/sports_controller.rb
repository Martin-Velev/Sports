class SportsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  #GET /sports/
  def index
    render json: Sport.all
  end

  private

  def record_not_found(error)
    render json: { error: error.message }, status: :not_found
  end
end
