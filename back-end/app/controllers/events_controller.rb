class EventsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  # GET /sports/:sportId
  def index
    @events = Sport.find(params["sportId"]).events

    render json: @events
  end

  private

  def record_not_found(error)
    render json: { error: error.message }, status: :not_found
  end
end
