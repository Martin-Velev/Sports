import React from "react";
import renderer from "react-test-renderer";
import Events from "./Events";
import { BrowserRouter as Router } from "react-router-dom";

it("renders correctly", () => {
  const tree = renderer
    .create(<Events match={{ params: { sportId: 42 } }} />)
    .toJSON();
  expect(tree).toMatchSnapshot();
});
