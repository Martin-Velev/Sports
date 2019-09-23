class OutcomesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  # GET /events/:eventId
  def index
    @event = Event.find(params[:eventId])
    @outcome = @event.outcome

    render json: @outcome
  end

  private

  def record_not_found(error)
    render json: { error: error.message }, status: :not_found
  end
end
