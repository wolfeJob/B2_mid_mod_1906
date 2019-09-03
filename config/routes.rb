Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #book routes
  get "/books", to: "books#index"

  #author routes
  get "/authors/:id", to: "authors#show"
end
