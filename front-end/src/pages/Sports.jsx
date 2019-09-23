import React, { Component } from "react";
import Sport from "../components/Sport";
import { fetchSports } from "../api/api";

export default class Sports extends Component {
  state = {
    sports: null
  };

  componentDidMount() {
    fetchSports().then(res => {
      console.log(res);
      this.setState({
        sports: res.data
      });
    });
  }

  renderSports = () => {
    return this.state.sports.map(sport => (
      <li key={sport.id}>
        <Sport sport={sport} />
      </li>
    ));
  };

  render() {
    if (!this.state.sports) {
      return "Loading...";
    }

    return (
      <div>
        <h3>Sports:</h3>
        <ul>{this.renderSports()}</ul>
      </div>
    );
  }
}
