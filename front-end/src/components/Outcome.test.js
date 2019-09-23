import React from "react";
import renderer from "react-test-renderer";
import Outcome from "../components/Outcome";
import { BrowserRouter as Router } from "react-router-dom";

it("renders correctly", () => {
  const tree = renderer
    .create(
      <Router>
        <Outcome outcome={{scoreA: 42, scoreB: 42}}/>
      </Router>
    )
    .toJSON();
  expect(tree).toMatchSnapshot();
});
