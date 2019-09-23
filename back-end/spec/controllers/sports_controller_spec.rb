require "rails_helper"

RSpec.describe SportsController, type: :controller do
  context "GET #index" do
    it "returns success response " do
      get :index
      expect(response.successful?).to eq(true)
    end
  end
end
