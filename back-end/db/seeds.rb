# Seed the database with info from the JSON file

require "json"

Outcome.delete_all
Event.delete_all
Sport.delete_all

file = File.read("./db/sports.json")
data = JSON.parse file

sports = data["sports"]

sports.each do |sport|
  events = []
  sport["comp"].each do |comp|
    comp["events"].each do |event|
      score = event["scoreboard"]
      outcome = Outcome.create(id: score["eId"], scoreA: score["scrA"], scoreB: score["scrB"])
      event = Event.create(
        id: event["id"],
        outcome: outcome,
        description: event["desc"],
        teamA: event["oppADesc"],
        teamB: event["oppBDesc"],
      )
      events << event
    end
  end
  Sport.create(id: sport["id"], events: events, description: sport["desc"])
end

p "Database seeded successfully."
