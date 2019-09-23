import React from "react";

const Outcome = props => {
  return (
    <div>
      <h5>The score is:</h5>
      {props.outcome.scoreA} : {props.outcome.scoreA}
    </div>
  );
};

export default Outcome;
