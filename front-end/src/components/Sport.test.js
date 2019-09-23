import React from "react";
import renderer from "react-test-renderer";
import Sport from "../components/Sport";
import { BrowserRouter as Router } from "react-router-dom";

it("renders correctly", () => {
  const tree = renderer
    .create(
      <Router>
        <Sport sport={{id: 42}} />
      </Router>
    )
    .toJSON();
  expect(tree).toMatchSnapshot();
});
