import React, { Component } from "react";
import { fetchEvents } from "../api/api";
import Event from "../components/Event";

export default class Events extends Component {
  state = {
    events: null
  };

  componentDidMount() {
    fetchEvents(this.props.match.params["sportId"]).then(res => {
      console.log(res.data);
      this.setState({ events: res.data });
    });
  }

  renderEvents = events => {
    return this.state.events.map(event => (
      <li key={event.id}>
        <Event event={event} sportId={this.props.match.params["sportId"]} />
      </li>
    ));
  };

  render() {
    const events = this.state.events;
    if (events === null) {
      return "Loading...";
    }

    if (events.length === 0) {
      return "No Events";
    }

    return (
      <div>
        <ul>{this.renderEvents(events)}</ul>
      </div>
    );
  }
}
