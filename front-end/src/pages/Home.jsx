import React from "react";
import { Link } from "react-router-dom";

const Home = () => {
  return (
    <div>
      <h1>Welcome to the score display demo app</h1>

      <Link to="sports">View Sports</Link>
    </div>
  );
};

export default Home;
