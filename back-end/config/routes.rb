Rails.application.routes.draw do
  get "/sports", to: "sports#index"
  get "/sports/:sportId", to: "events#index"
  get "/sports/:sportId/events/:eventId", to: "outcomes#index"
  get "events/:eventId", to: "outcomes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
