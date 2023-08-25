# config/routes.rb

Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get "/authors", to: "authors#index"
  get "/authors/new", to: "authors#new"
  post "/authors", to: "authors#create"
  get "/authors/:id", to: "authors#show"
  get "/authors/:id/edit", to: "authors#edit"
  patch "/authors/:id", to: "authors#update"
  delete "/authors/:id", to: "authors#destroy"
end