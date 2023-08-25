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

  get "/", to: "welcome#index"
  get "/books", to: "books#index"
  get "/books/new", to: "books#new"
  post "/books", to: "books#create"
  get "/books/:id", to: "books#show"
  get "/books/:id/edit", to: "books#edit"
  patch "/books/:id", to: "books#update"
  delete "/books/:id", to: "books#destroy"
end