class EventsController < ApplicationController

  # GET /sports/:sportId
  def index
    @events = Sport.find(params["sportId"]).events

    render json: @events
  end
end
