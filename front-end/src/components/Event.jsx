import React from "react";
import { Link } from "react-router-dom";

const Event = props => {
  const { sportId, event } = props;
  if (!sportId || !event) {
    throw new Error("Incorrect props");
  }
  return (
    <Link to={`/sports/${sportId}/events/${event.id}`}>
      {event.description}
    </Link>
  );
};

export default Event;
