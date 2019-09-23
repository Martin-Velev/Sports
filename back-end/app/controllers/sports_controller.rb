class SportsController < ApplicationController

  #GET /sports/
  def index
    render json: Sport.all
  end
end
