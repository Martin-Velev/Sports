import React from "react";
import { Link } from "react-router-dom";

const Sport = props => {
  const { sport } = props;
  return (
    <Link to={`sports/${sport.id}`}>
        {sport.description}({sport.id})
    </Link>
  );
};

export default Sport;
