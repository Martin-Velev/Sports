import React from "react";
import renderer from "react-test-renderer";
import Event from "../components/Event";
import { BrowserRouter as Router } from "react-router-dom";

it("renders correctly", () => {
  const tree = renderer
    .create(
      <Router>
        <Event event={{ id: 1, description: "test Event" }} sportId={42} />
      </Router>
    )
    .toJSON();
  expect(tree).toMatchSnapshot();
});
