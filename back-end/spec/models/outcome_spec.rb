require "rails_helper"

RSpec.describe Outcome, type: :model do
  it "should save successfully" do
    outcome = Outcome.new().save
    expect(outcome).to eq(true)
  end

  it "should save with scores" do
    outcome = Outcome.new(scoreA: 15, scoreB: 21)
    expect(outcome.scoreA).to eq(15)
    expect(outcome.scoreB).to eq(21)
  end
end
