import "./App.css";
import {
  BrowserRouter as Router,
  Route,
  Link,
  Redirect
} from "react-router-dom";
import React, { Component } from "react";

function App() {
  return (
    <Router>
      <Route path="/" exact component={Home} />
      <Route path="/sports" exact component={Sports} />
      <Route path={`/sports/:sportId`} exact component={Events} />
      <Route path={`/sports/:sportId/events/:eventId`} component={Outcomes} />
    </Router>
  );
}

export default App;
