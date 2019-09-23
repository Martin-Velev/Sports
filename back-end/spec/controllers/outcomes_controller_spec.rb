require "rails_helper"

RSpec.describe OutcomesController, type: :controller do
  context "GET #index" do
    it "404s with wrong eventId" do
      get :index, params: { eventId: 999 }
      expect(response.successful?).to eq(false)
      expect(response.status).to eq 404
    end

    it "succeeds with proper eventId" do
      Sport.new(events: [Event.new(id: 42, outcome: Outcome.new(id: 11))], id: 505).save
      get :index, params: { eventId: 42 }
      expect(response.successful?).to eq(true)
    end
  end
end
