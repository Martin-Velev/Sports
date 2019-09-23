import React from "react";
import renderer from "react-test-renderer";
import Sports from "./Sports";
import { BrowserRouter as Router } from "react-router-dom";

it("renders correctly", () => {
  const tree = renderer.create(<Sports />).toJSON();
  expect(tree).toMatchSnapshot();
});
