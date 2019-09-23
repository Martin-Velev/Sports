import axios from "axios";

const BASE_URL = "http://localhost:3001";

export function fetchSports() {
  return axios.get(`${BASE_URL}/sports`);
}

export function fetchEvents(sportId) {
  console.log(sportId);
  return axios.get(`${BASE_URL}/sports/${sportId}`);
}

export function fetchOutcome(eventId) {
  return axios.get(`${BASE_URL}/events/${eventId}`);
}
