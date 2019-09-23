import React from "react";
import renderer from "react-test-renderer";
import Outcomes from "./Outcomes";
import { BrowserRouter as Router } from "react-router-dom";

it("renders correctly", () => {
  const tree = renderer
    .create(<Outcomes match={{ params: { eventId: 42 } }} />)
    .toJSON();
  expect(tree).toMatchSnapshot();
});
