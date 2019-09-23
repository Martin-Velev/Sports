import React from 'react'
import { Link } from 'react-router-dom'

const Event = (props) => {
    const {sportId, event} = props
    console.log(sportId, event)
    return (
        <Link to={`/sports/${sportId}/events/${event.id}`}>
            {event.description}
        </Link>
    )
}

export default Event
