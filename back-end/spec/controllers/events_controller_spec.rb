require "rails_helper"

RSpec.describe EventsController, type: :controller do
  context "GET #index" do
    it "404s on a non-existant sportId" do
      get :index, params: { sportId: 9999 }
      expect(response.successful?).to eq(false)
      expect(response.status).to eq 404
    end

    it "Finds event that exists" do
      Sport.new(events: [Event.new(id: 42)], id: 505).save
      get :index, params: { sportId: 505 }
      expect(response.successful?).to eq(true)
    end
  end
end
