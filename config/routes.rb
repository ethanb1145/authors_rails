# config/routes.rb

Rails.application.routes.draw do
  get "/", to: "welcome#index"
  get "/authors", to: "authors#index"
  get "/authors/new", to: "authors#new"
  get "/authors/:id", to: "authors#show"
  get "/authors/:id/edit", to: "authors#edit"
  post "/authors", to: "authors#create"
  patch "/authors/:id", to: "authors#update"
  delete "/authors/:id", to: "authors#destroy"

  get "/books", to: "books#index"
end