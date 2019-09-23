import React, { Component } from "react";
import Outcome from "../components/Outcome";
import { fetchOutcome } from "../api/api";

export default class Outcomes extends Component {
  state = {
    outcome: null
  };

  componentDidMount() {
    fetchOutcome(this.props.match.params["eventId"])
      .then(res => {
        this.setState({
          outcome: res.data
        });
      })
      .catch(err => {
        this.setState({ outcome: {} });
        
      });
  }

  render() {
    if (!this.state.outcome) {
      return "loading";
    }
    return (
      <div>
        <Outcome outcome={this.state.outcome} />
      </div>
    );
  }
}
