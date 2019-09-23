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
      if !Outcome.exists?(score["eId"])
        outcome = Outcome.create(id: score["eId"], scoreA: score["scrA"], scoreB: score["scrB"])
      else
        outcome = Outcome.update(id: score["eId"], scoreA: score["scrA"], scoreB: score["scrB"])
      end
      if Sport.exists?(sport["id"])
        next
      end
      if !Event.exists?(event["id"])
        event = Event.create(
          id: event["id"],
          outcome: outcome,
          description: event["desc"],
          teamA: event["oppADesc"],
          teamB: event["oppBDesc"],
        )
      else
        event = Event.update(
          id: event["id"],
          outcome: outcome,
          description: event["desc"],
          teamA: event["oppADesc"],
          teamB: event["oppBDesc"],
        )
      end

      events << event
    end
  end
  if !Sport.exists?(sport["id"])
    Sport.create(id: sport["id"], events: events, description: sport["desc"])
  else
    Sport.updatej(id: sport["id"], events: events, description: sport["desc"])
  end
end

p "Database seeded successfully."
