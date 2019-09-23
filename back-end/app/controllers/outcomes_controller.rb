class OutcomesController < ApplicationController

  # GET /events/:eventId
  def index
    @event = Event.find(params[:eventId])
    @outcome = @event.outcome

    render json: @outcome
  end
end
