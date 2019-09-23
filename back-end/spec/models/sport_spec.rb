require "rails_helper"

RSpec.describe Sport, type: :model do
  it "should create with id" do
    expect(Sport.new(id: 42).id).to eq(42)
  end

  it "should save successfully" do
    sport = Sport.new().save
    expect(sport).to eq(true)
  end

  it "should create with events" do
    events = []
    5.times do
      events << Event.new(description: "Quiddich match")
    end
    sport = Sport.new(events: events)
    expect(sport.events.length).to eq(5)
  end
end
