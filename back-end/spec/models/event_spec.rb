require "rails_helper"

RSpec.describe Event, type: :model do
  it "should not save without sport" do
    event = Event.new().save
    expect(event).to eq(false)
  end

  it "should save with sport" do
    event = Event.new
    sport = Sport.new(events: [event])
    expect(event.save).to eq(true)
  end

  it "should save with outcome" do
    event = Event.new(outcome: Outcome.new)
    sport = Sport.new(events: [event])
    expect(event.save).to eq(true)
  end
end
